*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.bookswagon.com/
${browser}  chrome
${element}  xpath://*[@id="aspnetForm"]/div[5]/div/div[1]/div[1]/ul/li[1]/a

*** Test Cases ***
coordinates
    Set Selenium Implicit Wait  5s
    open browser  ${url}  ${browser}
    Maximize Browser Window
    login
    ${hor}=  Get Horizontal Position  ${element}
    ${ver}=  Get Vertical Position  ${element}
    sleep  10s
    Execute Javascript  window.scrollTo(${hor}, ${ver})
    click element  ${element}


BookswagonSearch
    Press Keys  none  TAB
    Press Keys  none  TAB
    Press Keys  none  john green
    Press Keys  name:ctl00$TopSearch1$Button1  RETURN
    Press Keys  none  E+N+D
    sleep  5s
    Press Keys  none  TAB
    Press Keys  none  TAB
    Press Keys  none  fault in our stars
    Press Keys  none  CTRL+A
    Press Keys  none  CTRL+C
    Press Keys  none  ENTER
    sleep  5s
    Press Keys  none  TAB
    Press Keys  none  TAB
    Press Keys  none  till the last breath
    Press Keys  none  CTRL+A
    Press Keys  none  CTRL+C
    Press Keys  none  CTRL+V
    Press Keys  none  ENTER
    sleep  5s

MouseAction
    Mouse Down  xpath://*[@id="listSearchResult"]/div[1]/div[3]/div[1]/a
    Mouse Up  xpath://*[@id="listSearchResult"]/div[1]/div[3]/div[1]/a
    Mouse Down On Image  xpath://*[@id="ctl00_phBody_ProductDetail_imgProduct"]
    sleep  5s
    Mouse Over  xpath://*[@id="ctl00_phBody_ProductDetail_divaction"]/table/tbody/tr/td[2]/div/a/input
    sleep  5s
    Mouse Out  xpath://*[@id="ctl00_phBody_ProductDetail_divaction"]/table/tbody/tr/td[2]/div/a/input
    sleep  5s

DragAction
    Go To  https://demoqa.com/droppable
    sleep  10s
    Open Context Menu  xpath://*[@id="app"]/div/div/div[2]/div[1]/div/div/div[6]/span/div/div[1]
    sleep  5s
    Drag and Drop  xpath://*[@id="draggable"]  xpath://*[@id="droppable"]
    sleep  5s
    close browser




*** Keywords ***
login
    Press Keys  none  TAB
    Press Keys  none  TAB
    Press Keys  none  TAB
    Press Keys  none  TAB
    Press Keys  none  ENTER
    Press Keys  none  preethisharmiprem@gmail.com
    Press Keys  none  TAB
    Press Keys  none  @str@L18
    Press Keys  none  ENTER

