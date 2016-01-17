
Feature: As business, I want on/off capability to display category best sellers to the customer when RTO times out or is down.

Scenario: Verify if PDP-V panel is displayed when RTO fails
    Given I visit the web site as a guest user
    When I navigate to PDP page that has recommendations
    Then I should see a "vertical" recommendation panel on pdp page
