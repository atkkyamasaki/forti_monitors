Feature: System_configuration

    Scenario: AVM Login
        Given I navigate to "http://192.168.110.13"
        Then I resize browser window size to width 800 and height 800
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 2 sec
        Then I should see page title as "Vista Manager"

    Scenario: Access to System Setting
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[6]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "System Setting"

    Scenario: Version Check
        And I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/section[1]/div/span[1]" should have text as "1.3.0"
        Then element having xpath "/html/body/div/article/div/section[1]/div/span[2]" should have text as "B01"

    Scenario: Initialize pop-up
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div/article/div/section[2]/div[2]/button"
        And I wait for 5 sec
        Then element having class "popup-header" should have text as "Initialize"
        And I click on element having class "ngdialog-close"

    Scenario: AVM Logout
        And I wait for 2 sec
        Then I maximize browser window
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"
        Then I resize browser window size to width 800 and height 800