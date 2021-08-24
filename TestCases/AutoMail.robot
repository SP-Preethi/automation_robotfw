*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${message}  HI,this mail is sent from automation-robotframework

*** Test Cases ***
LoginTest
    open browser    https://mail.google.com/mail/u/0/#inbox  chrome
    Maximize Browser Window
    input text      id:identifierId        preethi.p@terralogic.com
    click element   class:VfPpkd-vQzf8d
    Sleep           5s
    input text      name:password        @str@L18
    click element   class:VfPpkd-vQzf8d
    sleep           5s
    Capture Page Screenshot
ComposeTest
    click element   xpath://div[contains(text(), 'Compose')]
    sleep           5s
    input text      xpath:(//textarea[@class='vO'])[1]           preethi.p@terralogic.com
    sleep           3s
    input text      name:subjectbox                     Robot framework : Mail automation
    sleep           5s
    input text      xpath://div[@class="Am Al editable LW-avf tS-tW"]      ${message}
    click element   xpath://*[@id=":ac"]
    Choose file     xpath = //input[@name='Filedata']  C:\\Users\\dell 6th\\PycharmProjects\\pythonProject\\selenium-screenshot-58.png
    sleep           5s
    click element   xpath://div[@class="T-I J-J5-Ji aoO v7 T-I-atl L3"]
    sleep           5s

*** Keywords ***