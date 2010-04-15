Feature: Events
    In order to track usage
    As registered user
    I want to create events
    
    Scenario: Creation
        Given I am logged in as "kisu"
        And I am on the events page
        When I fill in "event_name" with "new event"
        And I press "Create"
        Then I should see "Event was successfully created."
        And I should see "new event"
    
    Scenario: Accidental submit
        Given I am logged in as "kisu"
        And I am on the events page
        And I press "Create"
        Then I should see "1 error prohibited this event from being saved"
        And I should see "Name can't be blank"
    
    Scenario: Destroy existing
        Given I am logged in as "kisu"
        And an event named "Happenign" exists
        And I am on the events page
        And I follow "Happenign"
        When I follow "Remove this event"
        Then I should see "Event removed"

    Scenario: Creation with description
        Given I am logged in as "kisu"
        And I am on the events page
        When I fill in "event_name" with "new event"
        And I fill in "event_description" with "new desc"
        And I press "Create"
        Then I should see "Event was successfully created."
        And I should see "new event"
        And I should see "new desc"