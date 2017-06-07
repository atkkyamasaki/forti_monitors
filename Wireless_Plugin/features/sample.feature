Feature: System

    Scenario: AVMへのログイン
        Given I navigate to "http://192.168.110.13"
        Then I resize browser window size to width 800 and height 800
        And I enter "manager" into input field having name "userId"
        And I enter "friend" into input field having name "password"
        When I click on element having class "login-btn"
        And I wait for 2 sec
        Then I should see page title as "Vista Manager"
        Then I take screenshot


    Scenario: ブラウザを閉じる
        Then 2 秒待ちます
        Then I close browser
