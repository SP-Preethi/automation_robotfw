from subprocess import call
import os
import schedule
import time

def sendmail():
    call(['C:/users/abhilash/pycharmprojects/automation_robotfw/venv/scripts/python.exe', '-m', 'robot',
          'C:/Users/Abhilash/PycharmProjects/automation_robotfw/TestCases/mail.robot'])
schedule.every(5).hours.do(sendmail)
time.sleep(2)

while 1:
    schedule.run_pending()
    time.sleep(3)