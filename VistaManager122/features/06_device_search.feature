Feature: Device_Search

    Scenario: AVM Login
        Given I navigate to "http://192.168.110.13"
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 2 sec
        Then I should see page title as "Vista Manager"

    Scenario: Access to Device Search
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[4]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "Device Search"

    Scenario: Check No device(All Devices)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/amf-segment/div/button[2]"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Check No device(AMF Nodes)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/amf-segment/div/button[2]"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Check No device(Guest Nodes)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/amf-segment/div/button[3]"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Check No device(Wireless APs)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/amf-segment/div/button[4]"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Check No device(Associated Clients)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/amf-segment/div/button[5]"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Check No device(Associated Clients)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/amf-segment/div/button[5]"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Check Export CSV
        And I wait for 2 sec
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/header/div/ul/li/button" should be present

    Scenario: AVM Logout
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"