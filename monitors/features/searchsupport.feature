Feature: searchsupport

    Scenario: Access
        Then I navigate to "https://searchsupport.fortinet.com/default.aspx"
        Then I wait 5 seconds for element having id "L_SubTitle" to enable
        Then I take screenshot

    Scenario: Login
        Then I enter "tyamasaki" into input field having name "ctl00$contextHolder$Login_name"
        Then I enter "ga38Q66c03" into input field having name "ctl00$contextHolder$Login_password"
        Then I take screenshot
        Then I click on element having name "ctl00$contextHolder$LoginButton"
        Then I wait 5 seconds for element having id "h_Support_32_Console_ctl00_mup_i_aln" to enable

    Scenario: Check
        Then element having id "h_Support_32_Console_ctl00_mup_i_aln" should have text as "Advanced Search"
        Then I take screenshot

    Scenario: Logout
        Then I close browser