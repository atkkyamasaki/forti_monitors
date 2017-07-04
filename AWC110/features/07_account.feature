Feature: Account

    Scenario: Login
        Then I navigate to "http://192.168.110.14"
        Then I enter "manager" into input field having name "userId"
        Then I enter "friend" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec

    Scenario: Access to User Account 
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='menu-item-user-account']/a"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "User Accounts"
        Then I take screenshot

    Scenario: Add account
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/button"
        Then I wait for 2 sec
        Then I enter "test01" into input field having name "name"
        Then I enter "test01" into input field having name "loginId"
        Then I enter "hogehoge" into input field having name "password"
        Then I enter "hogehoge" into input field having name "passwordConfirm"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog1']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/button"
        Then I wait for 2 sec
        Then I enter "テストてすと試験02" into input field having name "name"
        Then I enter "test02" into input field having name "loginId"
        Then I enter "hogehoge" into input field having name "password"
        Then I enter "hogehoge" into input field having name "passwordConfirm"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Check Search
        Then I wait for 2 sec
        Then I enter "manager" into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li/div[1]/span" should have text as "Administrator"
        Then I take screenshot

        Then I wait for 2 sec
        Then I clear input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I enter "01" into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li/div[1]/span" should have text as "test01"
        Then I take screenshot

        Then I wait for 2 sec
        Then I clear input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I enter "テスト" into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li/div[1]/span" should have text as "テストてすと試験02"
        Then I take screenshot

        Then I wait for 2 sec
        Then I clear input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I enter "てすと" into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li/div[1]/span" should have text as "テストてすと試験02"
        Then I take screenshot

        Then I wait for 2 sec
        Then I clear input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I enter "試験" into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I input enter key into input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li/div[1]/span" should have text as "テストてすと試験02"
        Then I take screenshot

        Then I wait for 2 sec
        Then I clear input field having xpath "/html/body/div/article/div/div/div/div[2]/div/input"

    Scenario: Check Sort
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[1]/div[1]/a"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li[1]/div[1]/span" should have text as "テストてすと試験02"
        Then I take screenshot

        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[1]/div[2]/a"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li[1]/div[1]/span" should have text as "Administrator"
        Then I take screenshot

    Scenario: Check Validation
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/header/div/button"

        Then I wait for 2 sec
        Then I enter "test01" into input field having name "loginId"
        Then I enter "hogehoge" into input field having name "password"
        Then I enter "hogehoge" into input field having name "passwordConfirm"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]" should be disabled
        Then I take screenshot
        Then I clear input field having name "name"
        Then I clear input field having name "loginId"
        Then I clear input field having name "password"
        Then I clear input field having name "passwordConfirm"

        Then I enter "test01" into input field having name "name"
        Then I enter "hogehoge" into input field having name "password"
        Then I enter "hogehoge" into input field having name "passwordConfirm"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]" should be disabled
        Then I take screenshot
        Then I clear input field having name "name"
        Then I clear input field having name "loginId"
        Then I clear input field having name "password"
        Then I clear input field having name "passwordConfirm"

        Then I enter "test01" into input field having name "name"
        Then I enter "test01" into input field having name "loginId"
        Then I enter "hoge" into input field having name "password"
        Then I enter "hoge" into input field having name "passwordConfirm"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]" should be disabled
        Then I take screenshot
        Then I clear input field having name "name"
        Then I clear input field having name "loginId"
        Then I clear input field having name "password"
        Then I clear input field having name "passwordConfirm"

        Then I enter "test01" into input field having name "name"
        Then I enter "test01" into input field having name "loginId"
        Then I enter "hogehoge" into input field having name "password"
        Then I enter "hogehoge1" into input field having name "passwordConfirm"
        Then I wait for 2 sec
        Then element having xpath "//*[@id='ngdialog3']/div[2]/div[1]/footer/button[1]" should be disabled
        Then I take screenshot
        Then I clear input field having name "name"
        Then I clear input field having name "loginId"
        Then I clear input field having name "password"
        Then I clear input field having name "passwordConfirm"

        Then I click on element having class "ngdialog-close"

    Scenario: Edit user account
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/div/div/section/article[2]/div/div/div[2]/button[1]"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"
        Then I wait for 2 sec
        Then I take screenshot

        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/div/div/section/article[2]/div/div/div[2]/button[1]"
        Then I enter "hogehoge01" into input field having name "password"
        Then I enter "hogehoge01" into input field having name "passwordConfirm"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog5']/div[2]/div[1]/footer/button[1]"

    Scenario: Logout
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"

    Scenario: Loing using new user account
        Then I wait for 2 sec
        Then I enter "test01" into input field having name "userId"
        Then I enter "hogehoge01" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec
        Then I take screenshot
        Then I select "Japanese (日本語)" option by text from dropdown having class "language-select"
        Then I select "JP - Japan" option by text from dropdown having class "country-select"
        Then I click on element having class "ok"

    Scenario: Logout / Login administrator
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then I enter "manager" into input field having name "userId"
        Then I enter "friend" into input field having name "password"
        Then I click on element having class "login-btn"
        Then I wait for 3 sec
        Then I click on element having xpath "//*[@id='menu-item-user-account']/a"
        Then I wait for 2 sec
        Then element having xpath "/html/body/div/global-header/ul[1]/li" should have text as "User Accounts"

    Scenario: Delete user account
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/div/div/section/article[1]/div[2]/ul/li[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "/html/body/div/article/div/div/div/section/article[2]/div/div/div[2]/button[2]"
        Then I wait for 2 sec
        Then I click on element having class "ngdialog-close"
        Then I wait for 2 sec
        Then I take screenshot

        Then I click on element having xpath "/html/body/div/article/div/div/div/section/article[2]/div/div/div[2]/button[2]"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='ngdialog2']/div[2]/div[1]/footer/button[1]"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Logout
        Then I wait for 2 sec
        Then I hover over element having class "user-info"
        Then I click on element having xpath "/html/body/div/global-header/ul[2]/li[2]/div/ul/li[5]/span"
        Then element having class "login" should have text as "Allied Telesis"
