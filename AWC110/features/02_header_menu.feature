Feature: Header Menu

    Scenario: Login
        Then I navigate to "http://192.168.110.14"
        Then I enter "manager" into input field having name "userId"
        Then I enter "friend" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec

    Scenario: Check Change password pop-up
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[1]/span"
        Then I wait for 2 sec
        Then element having class "popup-header" should have text as "Change password"
        Then I take screenshot
        Then I click on element having class "ngdialog-close"

    Scenario: Change password
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[1]/span"
        Then I wait for 2 sec
        Then I enter "friend" into input field having name "password"
        Then I enter "hogehoge" into input field having name "newPassword"
        Then I enter "hogehoge" into input field having name "newPasswordConfirm"
        Then I take screenshot
        Then I click on element having class "ok"
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then I wait for 2 sec
        Then I enter "manager" into input field having name "userId"
        Then I enter "hogehoge" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec

    Scenario: Change password Validation
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[1]/span"
        Then I wait for 2 sec
        Then I enter "hogehoge" into input field having name "password"
        Then I enter "1" into input field having name "newPassword"
        Then I enter "1" into input field having name "newPasswordConfirm"
        Then element having xpath "/html/body/div[2]/div[2]/div[1]/footer/button[1]" should be disabled
        Then I take screenshot
        Then I wait for 2 sec
        Then I clear input field having name "password"
        Then I clear input field having name "newPassword"
        Then I clear input field having name "newPasswordConfirm"
        Then I enter "hogehoge" into input field having name "password"
        Then I enter "friend" into input field having name "newPassword"
        Then I enter "friend" into input field having name "newPasswordConfirm"
        Then I click on element having class "ok"

    Scenario: Check language and country pop-up
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[2]/span"
        Then I wait for 2 sec
        Then element having class "popup-header" should have text as "Language / Country"
        Then I take screenshot
        Then I click on element having class "ngdialog-close"

    Scenario: Check session timeout pop-up
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[3]/span"
        Then I wait for 2 sec
        Then element having class "popup-header" should have text as "Set session timeout"
        Then I take screenshot
        Then I click on element having class "ngdialog-close"

    Scenario: Check Auto update interval pop-up
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[4]/span"
        Then I wait for 2 sec
        Then element having class "popup-header" should have text as "Auto update interval"
        Then I take screenshot
        Then I click on element having class "ngdialog-close"

    Scenario: Change Auto update interval
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[4]/span"
        Then I wait for 2 sec
        Then I wait for 2 sec
        Then I clear input field having name "autoUpdateInterval"
        Then I enter "2:00" into input field having name "autoUpdateInterval"
        Then I take screenshot
        Then I click on element having class "ok"
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[4]/span"
        Then I wait for 2 sec
        Then I clear input field having name "autoUpdateInterval"
        Then I enter "1:00" into input field having name "autoUpdateInterval"
        Then I click on element having class "ok"

    Scenario: Logout
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"