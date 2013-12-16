Feature: User Registration
  As a unregistered user
  I want to sign up
  So that I can have a bank account

  Scenario: A user signs up
    Given an unregistered user name "Judy"
    When Judy signs up for the site
    Then she should should have an account
    And it should say "Thanks for Signing up!"

  Scenario: A user cannot sign up without a name
    Given an unregistered User name who has not provided a name
    When User signs up for the site
    Then she should not have an account
    And it has the error "Please enter a name to create an account"

