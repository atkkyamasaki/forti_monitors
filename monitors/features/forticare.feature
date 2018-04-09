Feature: forticare

    Scenario: Access
        Then I navigate to "https://forticare.fortinet.com/"
        Then I wait 5 seconds for element having id "id_login_title" to enable
        Then I take screenshot

    Scenario: Login
        Then I enter "tyamasaki" into input field having name "username"
        Then I enter "ga38Q66c03" into input field having name "password"
        Then I take screenshot
        Then I click on element having class "submit"
        Then I wait 5 seconds for element having id "ctl00_RP_Sites_ctl01_ItemLink" to enable

    Scenario: Check
        Then element having id "ctl00_RP_Sites_ctl01_ItemLink" should have text as "FortiCare"
        Then I take screenshot

    Scenario: Logout
        Then I click on element having css "#LogoutMenu > li > h2 > a"

