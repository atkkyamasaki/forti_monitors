Feature: dispatcher

    Scenario: Access
        Then I navigate to "https://logctrl1.fortinet.com/com.fortinet.dispatcher.gwt.Main/Main.html"
        Then I wait 5 seconds for element having class "gwt-TextBox" to enable
        Then I take screenshot

    Scenario: Login
        Then I enter "test_sejp@fortinet.co.jp" into input field having class "gwt-TextBox"
        Then I enter "11223007" into input field having class "gwt-PasswordTextBox"
        Then I take screenshot
        Then I click on element having class "gwt-Button"
        Then I wait 5 seconds for element having class "gwt-HTML" to enable

    Scenario: Check
        Then element having xpath "/html/body/div/div[2]/div/table[1]/tbody/tr/td[1]/table/tbody/tr/td/div/h1" should have text as "Device Domains"
        Then I take screenshot

    Scenario: Logout
        Then I click on element having xpath "/html/body/div/div[1]/div/table/tbody/tr/td[2]/table/tbody/tr/td[2]/div/a"
