Feature: Event_Log

    Scenario: AVM Login
        Given I navigate to "http://192.168.110.13"
        Then I resize browser window size to width 800 and height 800
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 2 sec
        Then I should see page title as "Vista Manager"

    Scenario: Access to Event Log
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[3]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "Event"

    Scenario: Check No Log information(Show all)
        And I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/ul/li[1]" should not be present

    Scenario: Check No Log information(Show warnings only)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div/article/header/div/ul[1]/li/button"
        Then element having xpath "/html/body/div/article/div/div/div[3]/ul/li[1]" should not be present

    Scenario: Check Export CSV
        And I wait for 2 sec
        Then I maximize browser window
        And I wait for 2 sec
        Then element having xpath "/html/body/div/article/header/div/ul[2]/li/button" should be present

    Scenario: AVM Logout
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"
        Then I resize browser window size to width 800 and height 800
