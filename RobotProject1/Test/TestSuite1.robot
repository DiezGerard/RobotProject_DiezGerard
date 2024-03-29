*** Settings ***
Library    SeleniumLibrary 

Suite Setup    Log I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown    
Suite Setup    Log    I am inside Test SetUp 
Test Teardown    Log    I am inside Test Teardown

Default Tags    sanity
       
*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...
    
MySecondTest
    Log   I am inside 2nd test
    Set Tags    regression1
    Remove Tags    regression1
    
MyThirdTest
    Log    I am insid 3rd test

    
MyFourthTest
    Log    I am insid 4rd test
    
# FirstSeleniumTest
        # Open Browser    ${URL}    chrome
        # Set Browser Implicit Wait    5
        # Input Text      name=q                Automation step by step
        # Press Keys    name=q    ESCAPE
        # #Click Button    name=btnk  
        # Sleep    2        
        # Close Browser
        # Log   Test Completed
        
# SampleLoginTest
        # [Documentation]    This is a sample login test
        # Open Browser       https://opensource-demo.orangehrmlive.com/
        # Set Browser Implicit Wait    5
        # LoginKW           
        # Click Element      id=welcome 
        # Click Element      link=Logout
        # Close Browser
        # Log                Test completed
        # Log                This test was executed by %{username} on %{os}      
        
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    admin    admin123
&{LGOINDATA}    username=admin    password=admin123


*** Keywords ***
LoginKW
    Input Text         id=txtUsername    @{CREDENTIALS} [0] 
    Input Password     id=txtPassword    &{LGOINDATA} [password]
    Click Button       id=btnLogin
    
