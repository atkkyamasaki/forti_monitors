Feature: kb

    Scenario: Access
        Then I navigate to "http://kb.fortinet.com/kb/microsites/microsite.do"
        Then I wait 5 seconds for element having class "top_nav" to enable
        Then I take screenshot
 
    Scenario: Check
        Then element having xpath "//*[@id='nav']/li[1]/a" should have text as "Knowledge Home"
        Then I take screenshot

    Scenario: Logout
        # Then I close browser
