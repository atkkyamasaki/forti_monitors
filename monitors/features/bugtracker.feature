Feature: bugtracker

    Scenario: Access
        Then I navigate to "https://bugtracker.fortinet-emea.com/index.php"
        Then I wait 5 seconds for element having id "content" to enable
        Then I take screenshot

    Scenario: Login
        Then I enter "tyamasaki" into input field having name "LoginForm[username]"
        Then I enter "ga38Q66c03" into input field having name "LoginForm[password]"
        Then I take screenshot
        Then I click on element having name "yt0"
        Then I wait 5 seconds for element having id "bugsforma" to enable

    Scenario: Check
        Then element having id "bugs-grid_c0" should have text as "Bug ID"
        Then I take screenshot

    Scenario: Logout
        Then I click on element having xpath "//*[@id='page']/table/tbody/tr/td/a[3]"


