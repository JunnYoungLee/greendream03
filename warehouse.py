import RPi.GPIO as GPIO
#라즈베리에 dht22의 정보를 받아오는 별명이 dht인 값 입니다.
import Adafruit_DHT as dht
#시간을 사용해서 sleep에 사용자가 입력이 가능한 변수로 만들어줍니다.
from time import sleep
#현재시각을 가져오는 함수 입니다.
from datetime import datetime
#mysql을 연결 해주는 라이브러리 pymysql 입니다.
import pymysql as ps
#끝날때 사용할 신호 입니다.
#sys
import sys

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

#아두이노 핀번호입니다.
DHT = 22

#물체감지 핀번호 입니다.
movement = 17
GPIO.setwarnings(False)
GPIO.setup(movement, GPIO.IN)

#부저 핀번호 입니다.
buzzer = 18
GPIO.setup(18, GPIO.OUT)
Frq = [ 200, 300, 200, 300, 200, 300, 200, 300, 200, 300, 200, 300, 200, 300, 200, 300, 200, 300, 200, 300, 200, 300, 200, 300 ]
speed = 0.5
p = GPIO.PWM(18,261.63)
#p.start(0) #소리 키고 끄는 역활입니다.

#led 핀 번호입니다.
led = 4
GPIO.setup(led, GPIO.OUT)

def led_callback():
    if GPIO.input(led):
        GPIO.output(led, 1)
        print("경고!")
    else:
        GPIO.output(led,0)
        print("안전!")
print(led_callback)

def buzzer_callback():
    try:
        while 1:
            for fr in Frq:
                p.start(10)
                p.ChangeFrequency(fr)
                sleep(speed)
    except KeyboardInterrupt:
        pass
    p.stop()
print(buzzer_callback)

def signal_handler():
    GPIO.cleanup()
    sys.exit(0)


#이벤트 쓰레드(실같은 데이터)를 생성해 def에 담은 led_caollback 함수를 가져온다. 
#GPIO.add_event_detect(led,GPIO.BOTH,callback=led_callback)
#이벤트 쓰레드(실같은 데이터)를 생성해 def에 담은 buzzer_caollback 함수를 가져온다.  
#GPIO.add_event_detect(buzzer,GPIO.BOTH,callback=buzzer_callback)
while True:
    #mysql 연결
    conn = ps.connect(
        user='root',
        passwd='1234',
        host='localhost',
        db='greenHospital',
        charset='utf8'
    )
    #mysql 연결
    cursor = conn.cursor()

    if GPIO.input(movement) == 0:
        p.start(0)
        GPIO.output(led, 0)
        print("움직임이 없습니다.!")
        sleep(5)
    else: GPIO.input(movement) == 1
    p.start(10)
    GPIO.output(led, 1)
    print("{:%Y-%M-%m %R}".format(datetime.now()) + " 움직임을 감지했습니다.!")
    move = "insert into dht (motion, mtime) value(%s,%s)"
    mval = (GPIO.input(movement), "{:%Y-%m-%d %R}".format(datetime.now()))
    print(mval)

    cursor.execute(move,mval)
    conn.commit()
    
    #온습도 데이터 값입니다.
    humDB, temDB = dht.read_retry(dht.DHT22, DHT)
    cursor = conn.cursor()
    stl = "insert into dht(hdb,tdb,dtim) value(%s,%s,%s)"
    val = (humDB, temDB, "{:%Y-%m-%d %R}".format(datetime.now()))
    print ("{:%Y-%M-%m %p %h:%i}".format(datetime.now()) + "Humidity = {0:0.1f}% Temp = {1:0.1f} c".format(humDB, temDB))

    cursor.execute(stl,val) 
    conn.commit()

    #측정한 DB의 온도값 변수
    cursor.execute("select tdb, dtim from(select * from dht where(tdb, dtim) in (select tdb, max(dtim) as dtim from dht group by tdb)order by dtim desc) t group by t.tdb")
    #db에서 가져온 tdb temSignal 변수 담는다.
    temSignal = cursor.fetchone()  
    print(temSignal)

    #db에 있는 user를 선택해서 가져오는 변수.
    cursor.execute("select user, utim from(select * from dht where(user, utim) in (select user, max(utim) as utim from dht group by user)order by utim desc) t group by t.user")
    #db에서 가져온 user를 reference으로 변수 담는다.
    reference = cursor.fetchone()
    #기준온도를 입력할 최종 reference라는 변수.
    print(reference)

    #기준온도와 측정한온도의 값을 비교해 기준온도보다 높으면 led와 buzzer가 울리게 한다.
    if temSignal[0] > reference[0] :
       buzzer_callback()
       led_callback()
    #실시간 온도가 기준온도보다 낮으면 pin넘버를 초기화 한다.
    else: temSignal[0] < reference[0]
    #sleep(5)
    #signal_handler()
    print(signal_handler)

    sleep(5)
    #conn.close()
