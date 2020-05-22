Feature: Amazon Sign Up

  Scenario: User Sign up into Amazon account
    Given user goes to amazon sign up
    When I fill in 'name'
    Then I fill in 'email'
    Then I fill in 'password'
    Then I fill in 'confirm password'
    Then user see 'homepage'