Feature: GitHub Search
  As a user
  I want to search for repositories on GitHub
  So that I can find the code I need

  Scenario: Search for a repository
    Given I am on the GitHub homepage
    When I search for "site_prism"
    Then I should see "natritmeyer/site_prism" in the search results

  Scenario: Failed scenario
    Given I am on the GitHub homepage
    When I search for "site_prism"
    Then I should see "Failed step" in the search results