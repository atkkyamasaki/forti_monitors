Feature: Wireless Monitoring

    Scenario: Login
        Then I navigate to "http://192.168.110.14"
        Then I enter "manager" into input field having name "userId"
        Then I enter "friend" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec

    # ============= Wireless Map ============= 
    Scenario: Create Wireless Map (Display:panel)
        Then I click on element having xpath "/html/body/div/article/header/div/ul[2]/li[2]/button"
        Then I wait for 2 sec
        Then I enter "map1" into input field having name "name"
        Then I enter "C:\auto_ui_test\AWC110\features\test_files\map1.png" into input field having name "file"
        Then I enter "Default Group" into input field having name "wirelessGroup"
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul[2]/li[2]/button"
        Then I wait for 2 sec
        Then I enter "map2" into input field having name "name"
        Then I enter "C:\auto_ui_test\AWC110\features\test_files\map2.png" into input field having name "file"
        Then I enter "Default Group" into input field having name "wirelessGroup"
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then I take screenshot

    Scenario: Search Wireless Map (Display:panel)
        Then I wait for 2 sec
        Then I enter "map2" into input field having xpath "/html/body/div[1]/article/div/div/div[2]/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li/a/div[4]" should have text as "map2"
        Then I wait for 2 sec
        Then I take screenshot
        Then I clear input field having xpath "/html/body/div[1]/article/div/div/div[2]/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/input"

    Scenario: Create Wireless Map (Display:list)
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[1]/li/span"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[2]/button"
        Then I wait for 2 sec
        Then I enter "map3" into input field having name "name"
        Then I enter "C:\auto_ui_test\AWC110\features\test_files\map1.png" into input field having name "file"
        Then I enter "Default Group" into input field having name "wirelessGroup"
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[2]/button"
        Then I wait for 2 sec
        Then I enter "map4" into input field having name "name"
        Then I enter "C:\auto_ui_test\AWC110\features\test_files\map2.png" into input field having name "file"
        Then I enter "Default Group" into input field having name "wirelessGroup"
        Then I click on element having xpath "//*[@id='ngdialog4']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then I take screenshot

    Scenario: Search Wireless Map (Display:list)
        Then I wait for 2 sec
        Then I enter "map4" into input field having xpath "/html/body/div[1]/article/div/div/div[2]/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li/a/div[4]" should have text as "map4"
        Then I wait for 2 sec
        Then I take screenshot
        Then I clear input field having xpath "/html/body/div[1]/article/div/div/div[2]/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/input"

    Scenario: Sort Wireless Map (Display:list)
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/header/div[3]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[1]/a/div[4]" should have text as "map4"
        Then I wait for 2 sec
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/header/div[3]"

    Scenario: Add Wireless AP
        Then I wait for 2 sec
        Then I click on element having class "global-menu__item--wireless-configuration"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div/div/ul/li[1]/span"
        Then I wait for 2 sec
        Then I enter "01_tq4400e" into input field having name "name"
        Then I enter "192.168.110.232" into input field having name "ipAddress"
        Then I enter "00:1A:EB:B1:8B:A0" into input field having name "macAddress"
        Then I select "Default Group" option by text from dropdown having name "wirelessGroupId"
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then I take screenshot
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li/p[2]" should have text as "01_tq4400e"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li/div[1]/div[1]/p[1]" should have text as "192.168.110.232"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li/div[1]/div[1]/p[2]" should have text as "00:1a:eb:b1:8b:a0"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li/div[1]/div[1]/p[4]" should have text as "Default Group"
        Then I take screenshot

    Scenario: Add Wireless AP to Map
        Then I wait for 2 sec
        Then I click on element having class "global-menu__item--wireless-monitoring"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[1]/global-menu-wireless-monitoring/li[1]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/div/div[3]/ul/li[1]/a/div[11]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul[3]/li/button"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/aside[3]/div[3]/ul/li/p[1]"
        Then I wait for 2 sec
        Then I click on element having class "floor-image"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/aside[3]/div[3]/ul/li[2]/p[1]"
        Then I wait for 2 sec
        Then I click on element having id "svg-canvas"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul[4]/li[3]/button"
        Then I wait for 5 sec
        Then I take screenshot

    Scenario: Check add Wireless AP
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/aside[1]/div[3]/ul/li[1]/p[3]" should have text as "01_tq4400e"
        Then element having xpath "/html/body/div[1]/article/div/aside[1]/div[3]/ul/li[2]/p[3]" should have text as "02_mws1750ap"
        Then I take screenshot

    Scenario: Sort Wireless AP in MAP
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/aside[1]/div[3]/div/span[2]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/aside[1]/div[3]/ul/li[1]/p[3]" should have text as "02_mws1750ap"
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[1]/article/div/aside[1]/div[3]/div/span[2]"

    Scenario: Search Wireless AP in MAP
        Then I wait for 2 sec
        Then I enter "02" into input field having xpath "/html/body/div[1]/article/div/aside[1]/div[2]/div[1]/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/aside[1]/div[2]/div[1]/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/aside[1]/div[3]/ul/li/p[3]" should have text as "02_mws1750ap"
        Then I take screenshot
        Then I wait for 2 sec
        Then I clear input field having xpath "/html/body/div[1]/article/div/aside[1]/div[2]/div[1]/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/aside[1]/div[2]/div[1]/input"

    Scenario: Filter Wireless AP by Tag in MAP
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/aside[1]/div[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/aside[1]/div[2]/div[2]/ul/li[1]"
        Then I wait for 2 sec
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/aside[1]/div[3]/ul/li/p[3]" should have text as "02_mws1750ap"
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[1]/article/div/aside[1]/div[1]"

    Scenario: Delete MAP (Display:panel)
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[1]/global-menu-wireless-monitoring/li[1]/a"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div/article/div/div/div[3]/ul/li[4]/a/div[11]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[4]/a/div[11]/span[2]"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"
        Then I wait for 2 sec
        Then I take screenshot

        Then I hover over element having xpath "/html/body/div/article/div/div/div[3]/ul/li[4]/a/div[11]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[4]/a/div[11]/span[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then I take screenshot

    Scenario: Delete MAP (Display:list)
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[1]/li/span"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[3]/a/div[10]/span[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[2]"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[3]/a/div[10]/span[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog4']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then I take screenshot

    # ============= Wireless AP Status ============= 
    Scenario: Wireless AP Status
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[1]/global-menu-wireless-monitoring/li[2]/a"
        Then I wait for 2 sec
        Then I take screenshot

    # ============= AWC History ============= 
    Scenario: AWC History
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[1]/global-menu-wireless-monitoring/li[3]/a"
        Then I wait for 2 sec
        Then I take screenshot

    # ============= Rogue AP Detection ============= 
    Scenario: Rogue AP Detection
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[1]/global-menu-wireless-monitoring/li[4]/a"
        Then I wait for 2 sec
        Then I take screenshot

    # ============= Log Management ============= 
    Scenario: Log Management
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[1]/global-menu-wireless-monitoring/li[5]/a"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Logout
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"