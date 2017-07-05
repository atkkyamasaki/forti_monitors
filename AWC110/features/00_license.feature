Feature: License

    Scenario: Login VistaEX
        Then I navigate to "http://192.168.110.14:5000"
        Then I take screenshot

        Then I enter "manager" into input field having name "username"
        Then I enter "friend" into input field having name "password"
        Then I click on element having xpath "//*[@id='loginform']/div[3]/div/input"
        Then I wait for 2 sec
        Then I take screenshot

    Scenario: Restore VistaEX
        Then I click on element having xpath "//*[@id='accountForm']/div/div[3]/a"
        Then I wait for 2 sec
        Then I enter "C:\auto_ui_test\AWC110\features\test_files\uitest_backup.tar" into input field having name "file"
        Then I wait for 2 sec
        Then I click on element having xpath "//*[@id='backupform']/div/div[3]/button"
        Then I wait for 5 sec
        Then I take screenshot
