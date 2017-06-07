Feature: Wireless_Configuration

    Scenario: AVM Login
        Given I navigate to "http://192.168.110.13"
        Then I resize browser window size to width 800 and height 800
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 2 sec
        Then I should see page title as "Vista Manager"

    Scenario: Access to Management Group
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[2]/ul/li[1]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Configuration / Management Group"

    Scenario: Check Default Group
        And I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/ul/li/p[1]/span[1]" should have text as "Default Group"

    Scenario: Can't delete Default Group
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[1]/p[7]" should have attribute "class" with value "wireless-group-list__item__delete hidden"

    Scenario: Create Management Group
        Then I maximize browser window
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/header/div/ul/li/button"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Create Management Group"
        And I click on element having class "ngdialog-close"

    Scenario: Edit Default Group
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[1]/p[6]/span"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Edit Management Group"
        And I click on element having class "ngdialog-close"

    Scenario: Access to Profile
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[2]/ul/li[2]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Configuration / Profile"

    Scenario: Check No Profile
        And I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/ul/li" should not be present

    Scenario: Access to Wireless AP Settings
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[2]/ul/li[3]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Configuration / Wireless AP Settings"

    Scenario: Check No AP
        And I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li" should not be present

    Scenario: Create Manual Registration pop-up
        And I wait for 2 sec
        Then I hover over element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div"
        When I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[1]/span"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Wireless AP Registration"
        And I click on element having class "ngdialog-close"

    Scenario: Create Registration from CSV File pop-up
        And I wait for 2 sec
        Then I hover over element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div"
        When I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[2]/span"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Registration from CSV File"
        And I click on element having class "ngdialog-close"

    Scenario: Create Registration from Guest Node pop-up
        And I wait for 2 sec
        Then I hover over element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div"
        When I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[3]/span"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Error"
        And I click on element having class "ngdialog-close"

    Scenario: Access to Operation Scheduling
        And I wait for 2 sec
        Then I hover over element having xpath "//*[@id='menu-item-wireless-network']/a"
        When I click on element having xpath "//*[@id="sub-menu-wireless-network"]/div/div/section[2]/ul/li[4]/a"
        And I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li[2]" should have text as "Configuration / Operation Scheduling"

    Scenario: Check Default Group AWC
        And I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/div[2]/ul/li/p[1]/span" should have text as "Default Group AWC"

    Scenario: Create  Registration from Guest Node pop-up
        And I wait for 2 sec
        When I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        And I wait for 2 sec
        Then element having class "popup-header" should have text as "Create Operation Scheduling"
        And I click on element having class "ngdialog-close"

    Scenario: AVM Logout
        And I wait for 2 sec
        Then I hover over element having class "user-info"
        When I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"
        Then I resize browser window size to width 800 and height 800