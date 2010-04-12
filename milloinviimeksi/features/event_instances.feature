Feature: Events
    In order to track usage
    As registered user
    I want to add times to existing events
    
    Scenario: Adding an instance to existing event
        Given I am logged in as "kisu"
        And an event named "Happenign exists"
        And I am on the events page
        When I follow "Happenign exists"
        And I select "December 25, 2008 10:00" as the date and time
        And I press "Add occasion"
        Then I should see "Event instance was successfully created."

    Scenario: Adding an instance to existing event
        Given I am logged in as "kisu"
        And an event named "Happenign exists"
        And I am on the events page
        When I follow "Happenign exists"
        And I select tomorrow as the date and time
        And I press "Add occasion"
        Then I should see "1 error prohibited this event instance from being saved"
        And I should see "We can't see to the future, can we?"
