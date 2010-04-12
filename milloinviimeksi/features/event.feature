Feature: Events
    In order to track usage
    As registered user
    I want to create events
    
    Scenario: Creation
        Given I am logged in as "kisu"
        And I am on the home page
        When I fill in "event_name" with "new event"
        And I press "Create"
        Then I should see "Event was successfully created."
    
    Scenario: Accidental submit
        Given I am logged in as "kisu"
        And I am on the home page
        And I press "Create"
        Then I should see "1 error prohibited this event from being saved"
        And I should see "Name can't be blank"