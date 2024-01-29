*** Settings ***
Documentation    Robot TEST SE
Library    SeleniumLibrary
Suite Setup    Open Browser    https://automationexercise.com/
Suite Teardown    Close Browser


*** Variables ***
${Prod}    Winter Top


*** Keywords ***
Click Search Button
    Click Button    //*[@id="submit_search"]
    Page Should Contain    Search Product
Input Search
    [Arguments]    ${Prod}
    Input Text    //*[@id="search_product"]    ${Prod}

*** Test Cases ***

Click on Products
    [Documentation]    click Products 
    Click Button    //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a
    Page Should Contain    /html/body/section[2]/div[1]/div/div[2]/div

Search on Product
    [Documentation]    search product with searching panel
    Input Search    ${Prod}
    Click Search Button
    Page Should Contain    /html/body/section[2]/div[1]/div/div[2]/div  