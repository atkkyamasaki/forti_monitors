Feature: Menu

    Scenario: AVM Login
        Given I navigate to "http://192.168.110.13"
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 5 sec
        Then I should see page title as "Vista Manager"

    Scenario: Global Menu Close
        And I wait for 2 sec
        When I click on element having class "global-menu-header"
        And I wait for 1 sec
        Then element having xpath "/html/body/div[1]/global-menu" should have attribute "class" with value "ng-isolate-scope mini"
        Then I take screenshot

    Scenario: Global Menu Open
        And I wait for 2 sec
        When I click on element having class "global-menu-header"
        And I wait for 1 sec
        Then element having xpath "/html/body/div[1]/global-menu" should have attribute "class" with value "ng-isolate-scope wide"
        Then I take screenshot

    Scenario: Wireless Sub Menu Open
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        And I wait for 1 sec
        Then element having xpath "//*[@id='sub-menu-wireless-network']" should have attribute "class" with value "global-sub-menu"
        Then I take screenshot

    Scenario: Wireless Sub Menu Close
        And I wait for 2 sec
        Then I hover over element having xpath "/html/body/div[1]/global-menu/header"
        And I wait for 3 sec
        Then element having xpath "//*[@id='sub-menu-wireless-network']" should have attribute "class" with value "global-sub-menu ng-hide"
        Then I take screenshot

    Scenario: Access to AMF Network Map
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[1]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "AMF Network Catalog"
        Then I take screenshot

    Scenario: Access to Wireless Map
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id='sub-menu-wireless-network']/div/div/section[1]/ul/li[1]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / Wireless Deployment Catalog"
        Then I take screenshot

    Scenario: Access to Wireless AP Status
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[1]/ul/li[2]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / Wireless AP Status"
        Then I take screenshot

    Scenario: Access to AWC History
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[1]/ul/li[3]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / AWC History"
        Then I take screenshot

    Scenario: Access to Rogue AP Detection
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[1]/ul/li[4]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / Wireless Rogue AP Detection"
        Then I take screenshot

    Scenario: Access to Log Management
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[1]/ul/li[5]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Monitoring / Log Management"
        Then I take screenshot

    Scenario: Access to Management Group
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[2]/ul/li[1]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Configuration / Management Group"
        Then I take screenshot

    Scenario: Access to Profile
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[2]/ul/li[2]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Configuration / Profile"
        Then I take screenshot

    Scenario: Access to Wireless AP Settings
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[2]/ul/li[3]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Configuration / Wireless AP Settings"
        Then I take screenshot

    Scenario: Access to Operation Scheduling
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[2]/ul/li[4]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Configuration / Operation Scheduling"
        Then I take screenshot

    Scenario: Access to Event Log
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[3]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "Event"
        Then I take screenshot

    Scenario: Access to Device Search
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[4]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "Device Search"
        Then I take screenshot

    Scenario: Access to User Account
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[5]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "User Accounts"
        Then I take screenshot

    Scenario: Access to System Setting
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-menu/ul/li[6]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "System Setting"
        Then I take screenshot

    Scenario: Execute Polling
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/global-header/ul[2]/li[1]/button[1]"
        And I wait for 1 sec
        Then element having xpath "/html/body/div[1]/global-header/ul[2]/li[1]/button[2]" should have attribute "class" with value "reload reloading ng-isolate-scope"
        Then I take screenshot

    Scenario: Stop Polling
        And I wait for 10 sec
        Then element having xpath "/html/body/div[1]/global-header/ul[2]/li[1]/button[2]" should have attribute "class" with value "reload reloading ng-isolate-scope ng-hide"
        Then I take screenshot

    Scenario: Event log Icon isn't flashing
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/global-header/ul[2]/li[1]/div/span" should have attribute "class" with value "notice-dot ng-hide"
        Then I take screenshot

    Scenario: Event log message pop-up
        And I wait for 2 sec
        Then I hover over element having xpath "/html/body/div[1]/global-header/ul[2]/li[1]/div"
        Then element having xpath "/html/body/div[1]/global-header/ul[2]/li[1]/div/div/ul/li/button" should have text as "Show event log"
        Then I take screenshot

    Scenario: Access to Event log from Event log Icon
        And I wait for 2 sec
        Then I hover over element having xpath "/html/body/div[1]/global-header/ul[2]/li[1]/div"
        When I click on element having xpath "/html/body/div[1]/global-header/ul[2]/li[1]/div/div/ul/li/button"
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "Event"
        Then I take screenshot

    Scenario: Change password pop-up
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[1]/span"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Change password"
        And I click on element having class "ngdialog-close"
        Then I take screenshot

    Scenario: Change language pop-up
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[2]/span"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Change language"
        And I click on element having class "ngdialog-close"
        Then I take screenshot

    Scenario: Set session timeout pop-up
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[3]/span"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Set session timeout"
        And I click on element having class "ngdialog-close"
        Then I take screenshot

    Scenario: Auto update interval pop-up
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[4]/span"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Auto update interval"
        And I click on element having class "ngdialog-close"
        Then I take screenshot

    Scenario: AVM Logout
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"
        
