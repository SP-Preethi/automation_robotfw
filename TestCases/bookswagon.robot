*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${count}  Get Element Attribute  xpath://*[@id="listSearchResult"]/div[8]  class
${url}  https://www.bookswagon.com/
${browser}  chrome

*** Test Cases ***
BookswagonSearch
    Set Selenium Implicit Wait  5s
    open browser  ${url}  ${browser}
    Maximize Browser Window
    click link  xpath://*[@id="ctl00_divLogin"]/ul/li[1]/a
    input text  id:ctl00_phBody_SignIn_txtEmail  preethisharmiprem@gmail.com
    input text  id:ctl00_phBody_SignIn_txtPassword  @str@L18
    click element  xpath://*[@id="ctl00_phBody_SignIn_btnLogin"]
    input text  id:ctl00_TopSearch1_txtSearch  preeti shenoy
    Press Keys  name:ctl00$TopSearch1$Button1  RETURN
    @{results_on_pages}=  Get WebElements  xpath://*[@id="listSearchResult"]/div

    FOR  ${elements}  IN  @{results_on_pages}
          ${texts}=  Get Text  ${elements}
          Log  ${texts}
    END
    sleep  10s
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep  5s
    input text  id:ctl00_TopSearch1_txtSearch  peter buffett
    Press Keys  xpath://*[@id="ctl00_TopSearch1_Button1"]  ENTER
    #Press Keys  name:ctl00$TopSearch1$Button1  ENTER
    Select From List By Label  ddlSort  Price - High to Low
    @{results_on_page}=  Get WebElements  //*[@id="listSearchResult"]/div[10]/div[3]

    FOR  ${element}  IN  @{results_on_page}
          ${text}=  Get Text  ${element}
          Log  ${text}
    END
    sleep  10s
    close browser


*** Keywords ***