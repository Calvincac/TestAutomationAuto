@search
Feature: As an Auto 1 user 
i want to be able to search for a car based on search criteria

  Scenario: User searches for a car based on first registration and descending order 
    Given I open Auto 1 search page 
    When i apply search registration filter to '2015'
    And i sort cars to 'Höchster Preis' order
    Then i should see cars filtered from '2015' ahead
    And I should see price in descending order

