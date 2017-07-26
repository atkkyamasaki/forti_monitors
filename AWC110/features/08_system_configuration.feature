Feature: System Configuration

    Scenario: Login
        Then I navigate to "http://192.168.110.14"
        Then I enter "manager" into input field having name "userId"
        Then I enter "friend" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec
 
    Scenario: Access to System Setting 
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='menu-item-system-setting']/a"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "System Setting"
        Then I take screenshot

    Scenario: Check Version
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/section[1]/div/span[1]" should have text as "1.1.0"
        Then element having xpath "/html/body/div/article/div/section[1]/div/span[2]" should have text as "B03"
        Then I take screenshot

    Scenario: Check Initialize pop-up
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/section[2]/div[2]/button"
        Then I wait for 5 sec
        Then element having class "popup-header" should have text as "Initialize"
        Then I take screenshot

    Scenario: Check Initialize pop-up password
        Then I wait for 2 sec
        Then I enter "hogehoge" into input field having name "password"
        Then I click on element having class "ok"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[3]/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/div/form/div[2]/div/p" should have text as "Passwords do not match"
        Then I take screenshot

    Scenario: Check Initialize pop-up close
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close" 
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "System Setting"

    Scenario: Logout
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"