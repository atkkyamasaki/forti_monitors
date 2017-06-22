Feature: Login

    Scenario: Check lang and country popup
        Then I navigate to "http://192.168.110.14"
        Then I enter "manager" into input field having name "userId"
        Then I enter "friend" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec
        Then element having class "popup-header" should have text as "Language / Country"
        Then I take screenshot
 
    Scenario: Check Select country
        Then I select "Japanese (日本語)" option by text from dropdown having class "language-select"
        Then I select "JP - Japan" option by text from dropdown having class "country-select"
        Then I click on element having class "ok"
 
    Scenario: Check Home Page
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "監視機能 / フロアマップ一覧"
        Then I take screenshot

    Scenario: Check language and country pop-up
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[2]/span"
        Then I wait for 2 sec
        Then element having class "popup-header" should have text as "言語・国設定"
        Then I take screenshot

    Scenario: Change language to English
        Then I select "英語(English)" option by text from dropdown having class "language-select"
        Then I click on element having class "ok"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Logout
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"

