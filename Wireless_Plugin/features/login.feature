Feature: AWC_login

    Scenario: Valid_AWC_login
        Given I navigate to "http://localhost"
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 5 sec
        Then I should see page title as "Vista Manager"
        Then I close browser
