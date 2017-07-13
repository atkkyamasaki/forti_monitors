Feature: Wireless Configuration

    Scenario: Login
        Then I navigate to "http://192.168.110.14"
        Then I enter "manager" into input field having name "userId"
        Then I enter "friend" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec

    # ============= Management Group ============= 
    Scenario: Check Validation (Create Management Group)
        Then I click on element having class "global-menu__item--wireless-configuration"
        Then I wait for 1 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[1]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[2]"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]" should be disabled
        Then I take screenshot

    Scenario: Create Management Group
        Then I enter "mgmt01" into input field having name "name"
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/ul/li[2]/p[1]/span[1]" should have text as "mgmt01"
        Then I take screenshot

    Scenario: Sort Management Group
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div/span[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[1]/p[1]/span[1]" should have text as "mgmt01"
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div/span[1]"

    Scenario: Search Management Group
        Then I wait for 2 sec
        Then I enter "mgmt" into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[1]/p[1]/span[1]" should have text as "mgmt01"
        Then I take screenshot
        Then I wait for 2 sec
        Then I clear input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"

    Scenario: Edit Management Group
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[2]/p[6]/span"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having class "ngdialog-close"
        Then I take screenshot

    Scenario: Delete Management Group
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[2]/p[7]/span"
        Then I take screenshot

        Then I click on element having xpath "//*[@id='ngdialog4']/div[2]/div[1]/footer/button[2]"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[2]/p[7]/span"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog5']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then I take screenshot

    # ============= Profile ============= 
    Scenario: Check Create pop-up (Create Profile)
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Check availablity of select profile (Create Profile)
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[1]/div" should have attribute "class" with value "profile-type-selection__item"
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[2]/div" should have attribute "class" with value "profile-type-selection__item"
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[3]/div" should have attribute "class" with value "profile-type-selection__item"
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[4]/div" should have attribute "class" with value "profile-type-selection__item"
        Then I take screenshot

        Then I select "MWS AP Series" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[2]"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[5]/div" should have attribute "class" with value "profile-type-selection__item"
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[6]/div" should have attribute "class" with value "profile-type-selection__item"
        Then I take screenshot

        Then I select "AT - Austria" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I select "TQ Series" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[2]"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[1]/div" should have attribute "class" with value "profile-type-selection__item"
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[2]/div" should have attribute "class" with value "profile-type-selection__item"
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[3]/div" should have attribute "class" with value "profile-type-selection__item profile-type-selection__item--disabled"
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[4]/div" should have attribute "class" with value "profile-type-selection__item"
        Then I take screenshot

        Then I select "MWS AP Series" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[2]"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[5]/div" should have attribute "class" with value "profile-type-selection__item"
        Then element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[6]/div" should have attribute "class" with value "profile-type-selection__item"
        Then I take screenshot

    Scenario: Check availablity of select antenna (Create Profile)
        Then I wait for 2 sec
        Then I select "JP - Japan" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I select "TQ Series" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[4]/div"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[2]/ul/li[1]/label" should have text as "Location"
        Then I take screenshot

        Then I wait for 2 sec
        Then I select "AT - Austria" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[4]/div"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[2]/ul/li[2]/label" should have text as "Antenna Model (Radio1)"
        Then element having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[2]/ul/li[3]/label" should have text as "Antenna Model (Radio2)"
        Then I take screenshot

        Then I wait for 2 sec
        Then I select "AT - Austria" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[4]/div"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[2]/ul/li[2]/label" should have text as "Antenna Model (Radio1)"
        Then element having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[2]/ul/li[3]/label" should have text as "Antenna Model (Radio2)"
        Then I take screenshot

        Then I wait for 2 sec
        Then I select "TW - Taiwan" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[4]/div"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Check Validation (Create Profile)
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[2]"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I select "JP - Japan" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/header/div/ul/li[1]/button" should be disabled
        Then I take screenshot

        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[2]/button"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Create Profile
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I select "JP - Japan" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[1]"
        Then I wait for 2 sec
        Then I enter "01_tq_jp_11ac" into input field having name "name"
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[1]/button"
        Then I wait for 5 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I select "JP - Japan" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[2]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[1]"
        Then I wait for 2 sec
        Then I enter "02_tq_jp_11n" into input field having name "name"
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[1]/button"
        Then I wait for 5 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I select "JP - Japan" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[3]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[1]"
        Then I wait for 2 sec
        Then I enter "03_tq_jp_single" into input field having name "name"
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[1]/button"
        Then I wait for 5 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I select "JP - Japan" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[4]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[1]"
        Then I wait for 2 sec
        Then I enter "04_tq_jp_external" into input field having name "name"
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[1]/button"
        Then I wait for 5 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I select "AT - Austria" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[1]"
        Then I wait for 2 sec
        Then I enter "05_tq_at_11ac" into input field having name "name"
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[1]/button"
        Then I wait for 5 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I select "AT - Austria" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[4]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[1]"
        Then I wait for 2 sec
        Then I enter "06_tq_at_external" into input field having name "name"
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[1]/button"
        Then I wait for 5 sec
        Then I take screenshot
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"

        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I select "JP - Japan" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I select "MWS AP Series" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[5]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[1]"
        Then I wait for 2 sec
        Then I enter "11_mws_jp_11ac" into input field having name "name"
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[1]/button"
        Then I wait for 5 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I select "JP - Japan" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[1]"
        Then I wait for 2 sec
        Then I select "MWS AP Series" option by text from dropdown having xpath "//*[@id='ngdialog1']/div[2]/div/div/div[1]/select[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div/div/div/div[2]/section[6]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div/footer/button[1]"
        Then I wait for 2 sec
        Then I enter "12_mws_jp_11n" into input field having name "name"
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[1]/button"
        Then I wait for 5 sec
        Then I take screenshot

    Scenario: Sort Profile
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div/p[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/ul/li[1]/p[1]" should have text as "12_mws_jp_11n"
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div/p[1]"

    Scenario: Search Profile
        Then I wait for 2 sec
        Then I enter "06" into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/ul/li/p[1]" should have text as "06_tq_at_external"
        Then I take screenshot
        Then I wait for 2 sec
        Then I clear input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"

    Scenario: Edit Profile
        Then I wait for 2 sec
        Then I double click on element having xpath "/html/body/div/article/div/div/div[3]/ul/li[2]/p[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div[2]/ul/li[1]/button"
        Then I wait for 2 sec
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul/li[2]/button"

    Scenario: Delete Profile
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div[2]/ul/li[2]/button"
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[2]"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/header/div[2]/ul/li[2]/button"
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then I take screenshot

    # ============= Wireless AP Settings ============= 
    Scenario: Create Wireless AP (Manual Registration)
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
        Then I wait for 2 sec
        Then I take screenshot
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li/p[2]" should have text as "01_tq4400e"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li/div[1]/div[1]/p[1]" should have text as "192.168.110.232"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li/div[1]/div[1]/p[2]" should have text as "00:1a:eb:b1:8b:a0"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li/div[1]/div[1]/p[4]" should have text as "Default Group"
        Then I take screenshot

    Scenario: Check Validation (Create Wireless AP (Manual Registration))
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div/div/ul/li[1]/span"
        Then I wait for 2 sec

        Then I enter "01_tq4400e_test" into input field having name "name"
        Then I enter "192.168.110.232" into input field having name "ipAddress"
        Then element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]" should be disabled
        Then I take screenshot

        Then I clear input field having name "name"
        Then I clear input field having name "ipAddress"
        Then I enter "01_tq4400e_test" into input field having name "name"
        Then I select "Default Group" option by text from dropdown having name "wirelessGroupId"
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]" should be disabled
        Then I take screenshot

        Then I clear input field having name "name"
        Then I enter "01_tq4400e_test" into input field having name "name"
        Then I enter "192.168.110.232" into input field having name "ipAddress"
        Then I enter "00:1A:EB:B1:8B:A0" into input field having name "macAddress"
        Then I select "Default Group" option by text from dropdown having name "wirelessGroupId"
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/div/p" should have text as "Could not save the wireless AP."
        Then I take screenshot

        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Create Wireless AP (Registration from CSV File)
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[2]/span"
        Then I wait for 2 sec
        Then I enter "C:\auto_ui_test\AWC110\features\test_files\csv1.csv" into input field having name "file"
        Then I select "Default Group" option by text from dropdown having name "wirelessGroupId"
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having id "ngdialog2-aria-labelledby" should have text as "Complete"
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[2]/p[2]" should have text as "02_mws1750ap"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[2]/div[1]/div[1]/p[1]" should have text as "192.168.110.238"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[2]/div[1]/div[1]/p[2]" should have text as "00:1a:eb:a1:d8:45"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[2]/div[1]/div[1]/p[4]" should have text as "Default Group"
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[2]/div[1]/div[1]/p[5]" should have text as "mws"
        Then I take screenshot

    Scenario: Check Validation (Create Wireless AP (Registration from CSV File))
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[2]/span"
        Then I wait for 2 sec
        Then I enter "C:\auto_ui_test\AWC110\features\test_files\csv2.csv" into input field having name "file"
        Then I select "Default Group" option by text from dropdown having name "wirelessGroupId"
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then element having xpath "//*[@id='ngdialog4']/div[2]/div[1]/div/div[2]/ul/li/p[2]" should have text as "IP Address is duplicated."
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog4']/div[2]/div[2]"
        Then I wait for 2 sec

        Then I enter "C:\auto_ui_test\AWC110\features\test_files\csv3.csv" into input field having name "file"
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then element having xpath "//*[@id='ngdialog5']/div[2]/div[1]/div/div[2]/ul/li/p[2]" should have text as "Too few columns."
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog5']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"

    Scenario: Add Tag (Edit Tag)
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I check the checkbox having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/input"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[5]/span"
        Then I wait for 2 sec
        Then I enter "tq" into input field having xpath "//*[@id='ngdialog1']/div[2]/div[1]/div/div[2]/ul/li/input"
        Then I input enter key into input field having xpath "//*[@id='ngdialog1']/div[2]/div[1]/div/div[2]/ul/li/input"
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[1]/p[5]" should have text as "tq"
        Then I take screenshot

        Then I wait for 2 sec
        Then I check the checkbox having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/input"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[5]/span"
        Then I wait for 2 sec
        Then I enter "tq_test" into input field having xpath "//*[@id='ngdialog2']/div[2]/div[1]/div/div[2]/ul/li[2]/input"
        Then I input enter key into input field having xpath "//*[@id='ngdialog2']/div[2]/div[1]/div/div[2]/ul/li[2]/input"
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[1]/p[5]" should have text as "tq, tq_test"
        Then I take screenshot

    Scenario: Delete Tag (Edit Tag)
        Then I wait for 2 sec
        Then I check the checkbox having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/input"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[5]/span"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/div/div[2]/ul/li[2]/div/span[2]"
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[1]/p[5]" should have text as "tq"
        Then I take screenshot

    Scenario: Check Profile pop-up (Assign Profile)
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I check the checkbox having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/input"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[6]/span"
        Then I wait for 2 sec
        Then element having id "ngdialog1-aria-labelledby" should have text as "Profile Assignment"
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[2]"

    Scenario: Sort Wireless AP Setting
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[1]/p[2]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[2]" should have text as "02_mws1750ap"
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[1]/p[2]"

    Scenario: Search Wireless AP Setting
        Then I wait for 2 sec
        Then I enter "02" into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div[1]/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div[1]/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[2]" should have text as "02_mws1750ap"
        Then I take screenshot
        Then I wait for 2 sec
        Then I clear input field having xpath "/html/body/div[1]/article/div/div/div[2]/div[1]/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div[1]/input"

    Scenario: Filter Wireless AP Setting by Tag
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[2]/div[2]/ul/li[3]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[2]/div[2]/ul/li[2]"
        Then I wait for 2 sec
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li/p[2]" should have text as "01_tq4400e"
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[2]/div[2]/ul/li[5]"

    Scenario: Configure Profile
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[1]/li/button[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[1]/div/span[2]"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having class "ngdialog-close"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[1]/div/span[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/div/div[2]/article[1]/div[1]/div[1]/p[1]"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/div/div[2]/article[1]/div[1]/div[2]/ul/li[1]/div[1]" should have text as "12_mws_jp_11n"
        Then I take screenshot  

        Then I enter "06" into input field having xpath "//*[@id='ngdialog2']/div[2]/div[1]/div/div[1]/div/input"
        Then I input enter key into input field having xpath "//*[@id='ngdialog2']/div[2]/div[1]/div/div[1]/div/input"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/div/div[2]/article[1]/div[1]/div[2]/ul/li/div[1]" should have text as "06_tq_at_external"
        Then I take screenshot

        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/div/div[2]/article[1]/div[1]/div[2]/ul/li/div[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[1]/div/span[1]" should have text as "06_tq_at_external"
        Then I take screenshot
        
    Scenario: Check Configure Profile change single
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[1]/li/button[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[1]/div/span[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/div/div[2]/article[1]/div[1]/div[2]/ul/li[2]/div[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having id "ngdialog2-aria-labelledby" should have text as "Confirm"
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"

        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[1]/div/span[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/div/div[2]/article[1]/div[1]/div[2]/ul/li[1]/div[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having id "ngdialog4-aria-labelledby" should have text as "Confirm"
        Then I take screenshot
        Then I click on element having xpath "//*[@id='ngdialog4']/div[2]/div[1]/footer/button[1]"
    
    Scenario: Configure Channel & Tx Power
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[1]/li/button[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[2]/div/span[2]"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"

        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[2]/div/span[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/div/div/ul/li[2]/ul/li[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[2]/div/span[1]" should have text as "1ch"
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[4]/div/span[2]"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"

        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[4]/div/span[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog4']/div[2]/div[1]/div/div/ul/li[6]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[2]/div[4]/div/span[1]" should have text as "Max"
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[3]/span"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='target-radios']/li[2]/div/div[1]/span" should have text as "1ch"
        Then element having xpath "//*[@id='target-radios']/li[3]/div/div[1]/span" should have text as "Max"

    Scenario: Edit Wireless AP
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[2]/span"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"

        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[2]/span"
        Then I wait for 2 sec
        Then I clear input field having name "ipAddress"
        Then I enter "192.168.110.233" into input field having name "ipAddress"
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[1]/div[1]/p[1]" should have text as "192.168.110.233"
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[2]/span"
        Then I wait for 2 sec
        Then I clear input field having name "ipAddress"
        Then I enter "192.168.110.232" into input field having name "ipAddress"
        Then I click on element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec

    Scenario: Edit Wireless AP (Node Detail Page)
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/div[3]/span"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/section[1]/div/div[2]/button"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/section[2]/div/div/button"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div[2]/ul/li/button[2]"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/section[2]/div/div/button"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/form/section[2]/div[2]/div/section[1]/ul/li/span[1]"
        Then I enter "11:11:11:11:11:11" into input field having name "macAddress"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/form/section[2]/div[2]/div/section[2]/div/ul/li[1]/ul/li[3]/div/div/div/div/p" should have text as "Invalid MAC address"
        Then element having xpath "/html/body/div[1]/article/header/div[2]/ul/li/button[1]" should be disabled
        Then I take screenshot
        Then I clear input field having name "macAddress"
        Then I enter "12:11:11:11:11:11" into input field having name "macAddress"
        Then I wait for 2 sec
        Then I scroll to top of page
        Then I click on element having xpath "//*[@id='target-ap']/li[5]/span"
        Then I wait for 2 sec
        Then I enter "manager" into input field having name "loginId"
        Then I enter "password" into input field having name "loginPassword"
        Then I enter "password" into input field having name "loginPasswordConfirm"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div[2]/ul/li/button[1]"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Apply Profile
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I check the checkbox having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/input"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[2]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[2]/div/div/ul/li/span"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"
        Then I wait for 2 sec
        Then I take screenshot

        Then I check the checkbox having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/input"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[2]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[2]/div/div/ul/li/span"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 5 sec
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[3]/div[5]/button"

    Scenario: Delete Validation (Profile)
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[2]/a"
        Then I wait for 2 sec
        Then I double click on element having xpath "/html/body/div/article/div/div/div[3]/ul/li[3]/p[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div[2]/ul/li[2]/button"
        Then I wait for 2 sec
        Then element having id "ngdialog1-aria-labelledby" should have text as "Confirm"
        Then I take screenshot

        Then I click on element having class "ngdialog-close"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Delete Wireless AP Setting
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[3]/a"
        Then I wait for 2 sec
        Then I check the checkbox having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/input"
        Then I wait for 2 sec
        Then I hover over element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[7]/span"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"
        Then I wait for 2 sec
        Then I take screenshot

        Then I hover over element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/header/div/ul[2]/li[1]/div/div/ul/li[7]/span"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[2]" should have text as "02_mws1750ap"
        Then I take screenshot

    # ============= Operation Schedule ============= 
    Scenario: Create Operation Schedule
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[4]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[2]"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/article/header/div/ul/li/button"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]" should be disabled
        Then I take screenshot

        Then I enter "01_awc_result" into input field having name "name"
        Then I select "Apply AWC Result" option by text from dropdown having name "actionType"
        Then I wait for 2 sec
        Then I select "Default Group" option by text from dropdown having name "wirelessGroupId"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/span" should have text as "01_awc_result"
        Then I take screenshot

    Scenario: Edit Operation Schedule
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[4]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[8]/span"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[2]"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Search Operation Schedule
        Then I wait for 2 sec
        Then I enter "01" into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/span" should have text as "01_awc_result"
        Then I take screenshot
        Then I clear input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div[1]/article/div/div/div[2]/div/input"

    Scenario: Sort Operation Schedule
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[1]/p[1]"
        Then I wait for 2 sec
        Then I wait for 2 sec
        Then element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[1]/span" should have text as "Default Group AWC"
        Then I take screenshot
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[1]/p[1]"

    Scenario: Delete Operation Schedule
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/global-menu/ul/div[2]/global-menu-wireless-configuration/li[4]/a"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[9]/span"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[2]"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div[1]/article/div/div/div[3]/div[2]/ul/li[1]/p[9]/span"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div[3]/div[2]/ul/li/p[1]/span" should have text as "Default Group AWC"
        Then I take screenshot

    Scenario: Logout
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"


