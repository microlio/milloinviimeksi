Feature: Users
    In order to use service
    As registered user
    I want to create a user account
    
    Scenario: Register
    	Given I am on the home page
        When I follow "Register"
        And I fill in "name" with "user"
        And I fill in "password" with "pass"
        And I fill in "password confirmation" with "pass"
        And I press "Ok"
        Then I should see "User user was successfully created."

    Scenario: Passwords don't match
    	Given I am on the home page
        When I follow "Register"
        And I fill in "name" with "user"
        And I fill in "password" with "pass"
        And I fill in "password confirmation" with "pass2"
        And I press "Ok"
        Then I should see "Password doesn't match confirmation"
 
     Scenario: Username is taken
     	Given a user named "user" with password "pass" exists
    	And I am on the home page
        When I follow "Register"
        And I fill in "name" with "user"
        And I fill in "password" with "pass"
        And I fill in "password confirmation" with "pass2"
        And I press "Ok"
        Then I should see "Name has already been taken"