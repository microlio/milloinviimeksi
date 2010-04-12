Feature: Login
    In order to use service
    As a registered user
    I want to login
    
    Scenario: Login
        Given a user named "kisu" with password "Shub-Niggurath" exists
        And I am on the home page
        When I fill in "name" with "kisu"
        And I fill in "password" with "Shub-Niggurath"
        And I press "Login"
        Then I should see "You are logged in"

    Scenario: Wrong password
        Given a user named "kisu" with password "Shub-Niggurath" exists
        And I am on the home page
        When I fill in "name" with "kisu"
        And I fill in "password" with "something other"
        And I press "Login"
        Then I should see "You shall not pass"

    Scenario: Logout
        Given I am logged in as "kisu"
        When I follow "Logout"
        Then I should see "You have logged out"