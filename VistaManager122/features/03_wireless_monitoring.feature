Feature: Wireless_Monitoring

    Scenario: AVM Login
        Given I navigate to "http://192.168.110.13"
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 2 sec
        Then I should see page title as "Vista Manager"

    Scenario: Access to Wireless Map
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id='sub-menu-wireless-network']/div/div/section[1]/ul/li[1]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / Wireless Deployment Catalog"

    Scenario: Check No Wireless Map(Panel)
        And I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/ul/li" should not be present

    Scenario: Disable Tag Button(Panel)
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/button" should be disabled

    Scenario: Create Wireles Map(Panel)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[2]/button"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Create Deployment Map"
        And I click on element having class "ngdialog-close"

    Scenario: Check No Wireless Map(List)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/ul[1]/li/span"
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li" should not be present

    Scenario: Disable Tag Button(List)
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/button" should be disabled

    Scenario: Create Wireles Map(List)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[2]/button"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Create Deployment Map"
        And I click on element having class "ngdialog-close"

    Scenario: Access to Wireless AP Status
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[1]/ul/li[2]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / Wireless AP Status"

    Scenario: Check No AP
        And I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Disable Reboot Button
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/header/div/ul/li/button[1]" should be disabled

    Scenario: Disable Firmware Upgrade Button
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/header/div/ul/li/button[1]" should be disabled

    Scenario: Access to AWC History
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[1]/ul/li[3]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / AWC History"

    Scenario: Check Default Group
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/section/article[1]/div[3]/div[2]/li/p" should have text as "Default Group"

    Scenario: No AWC Log
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/section/article[2]/div[3]/div[2]/ul/li" should not be present

    Scenario: Access to Rogue AP Detection
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[1]/ul/li[4]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / Wireless Rogue AP Detection"

    Scenario: Check No Rogue AP(Show all)
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Check No Rogue AP(Show Rogue AP only)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/ul/li/button"
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Access to Log Management
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[1]/ul/li[5]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / Log Management"

    Scenario: Check No Log(All logs)
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li" should not be present

    Scenario: Check No Log(AP System)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/amf-segment/div/button[2]"
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li" should not be present

    Scenario: Check No Log(AP Management)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/amf-segment/div/button[3]"
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li" should not be present

    Scenario: Check No Log(Automatic Power/Channel)
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/amf-segment/div/button[4]"
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li" should not be present

    Scenario: Check Export CSV
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/header/div/ul/li/button" should be present

    Scenario: AVM Logout
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"