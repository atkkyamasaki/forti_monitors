Feature: Account

    Scenario: AVM Login
        Given I navigate to "http://192.168.110.13"
        Then I resize browser window size to width 800 and height 800
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 2 sec
        Then I should see page title as "Vista Manager"

    Scenario: Access to User Account
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[5]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "User Accounts"

    Scenario: Check Administrator only
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div/section/article[1]/div[2]/ul/li[2]" should not be present

    Scenario: Add User pop-up
        And I wait for 2 sec
        Then I maximize browser window
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/button"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Add Unprivileged User Account"
        And I click on element having class "ngdialog-close"

    Scenario: Edit User pop-up
        And I wait for 2 sec
        Then I maximize browser window
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li[1]/div[1]"
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/div/div/div/section/article[2]/div/div/div[2]/button[1]"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Edit User account"
        And I click on element having class "ngdialog-close"

    Scenario: AVM Logout
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"
        Then I resize browser window size to width 800 and height 800