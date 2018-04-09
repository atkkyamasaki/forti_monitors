Feature: info

    Scenario: Access
        Then I navigate to "https://info.fortinet.com/"
        Then I wait 5 seconds for element having id "id_login_title" to enable
        Then I take screenshot

    Scenario: Login
        Then I enter "tyamasaki" into input field having name "username"
        Then I enter "ga38Q66c03" into input field having name "password"
        Then I take screenshot
        Then I click on element having class "submit"
        Then I wait 5 seconds for element having id "project-links" to enable

    Scenario: Check
        Then element having xpath "//*[@id='project-links']/table/caption" should have text as "SOFTWARE"
        Then I take screenshot

    Scenario: Logout
        Then I hover over element having css "#usermenu > li"
        Then I click on element having css "#usermenu > li > ul > li > a"

