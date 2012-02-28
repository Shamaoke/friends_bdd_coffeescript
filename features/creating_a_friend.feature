Feature: Creating a friend

  Scenario: Creating a friend
    When I create a friend with a name "Chandler"
    Then the friend should have a name "Chandler"
