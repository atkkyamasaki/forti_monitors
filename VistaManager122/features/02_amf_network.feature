Feature: AMF_Network

    Scenario: AVM Login
        Given I navigate to "http://192.168.110.13"
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 2 sec
        Then I should see page title as "Vista Manager"

    Scenario: Access to AMF Network Map
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[1]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "AMF Network Catalog"
        Then I take screenshot

    Scenario: AMF Network is empty
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/ul/li" should not be present
        Then I take screenshot

    Scenario: Create AMF Network pop-up
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/button"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Create AMF Network"
        Then I take screenshot
        And I click on element having class "ngdialog-close"

    Scenario: AVM Logout
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"
