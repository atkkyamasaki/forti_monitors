Feature: Global Menu

    Scenario: Login
        Then I navigate to "http://192.168.110.14"
        Then I enter "manager" into input field having name "userId"
        Then I enter "friend" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec

    Scenario: Global Menu Close
        Then I wait for 2 sec
        Then I click on element having class "global-menu-header"
        Then I wait for 1 sec
        Then element having xpath "/html/body/div/global-menu" should have attribute "class" with value "ng-isolate-scope mini"
        Then I take screenshot

    Scenario: Global Menu Open
        Then I wait for 2 sec
        Then I click on element having class "global-menu-header"
        Then I wait for 1 sec
        Then element having xpath "/html/body/div/global-menu" should have attribute "class" with value "ng-isolate-scope wide"
        Then I take screenshot

    Scenario: Wireless Configuration Sub Menu Open (Global Menu Open)
        Then I wait for 2 sec
        Then I click on element having class "global-menu__item--wireless-configuration"
        Then I wait for 1 sec
        Then element having xpath "/html/body/div/global-menu/ul/div[2]" should have attribute "class" with value "global-sub-menu__easing-wireless-configuration"
        Then I take screenshot

    Scenario: Wireless Configuration Sub Menu Close (Global Menu Open)
        Then I wait for 2 sec
        Then I click on element having class "global-menu__item--wireless-configuration"
        Then I wait for 1 sec
        Then element having xpath "/html/body/div/global-menu/ul/div[2]" should have attribute "class" with value "global-sub-menu__easing-wireless-configuration easing-close ng-hide"
        Then I take screenshot

    Scenario: Wireless Monitoring Sub Menu Open (Global Menu Close)
        Then I wait for 2 sec
        Then I click on element having class "global-menu-header"
        Then I wait for 1 sec
        Then I hover over element having id "menu-item-wireless-monitoring"
        Then I wait for 1 sec
        Then element having xpath "//*[@id='sub-menu-wireless-monitoring']" should have attribute "class" with value "global-sub-menu_wireless-monitoring"
        Then I take screenshot

    Scenario: Wireless Monitoring Sub Menu Close (Global Menu Close)
        Then I wait for 2 sec
        Then I hover over element having id "sub-menu-system-setting"
        Then I wait for 1 sec
        Then element having xpath "//*[@id='sub-menu-wireless-monitoring']" should have attribute "class" with value "global-sub-menu_wireless-monitoring ng-hide"
        Then I take screenshot
        Then I click on element having class "global-menu-header"

    Scenario: Logout
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"