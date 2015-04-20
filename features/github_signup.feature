Feature: Github Signup

  In order to ease signup and public key management
  As a guest with a github account
  I want to be able to signup using my github account

  @omniauth_test
  Scenario: A guest successfully signs up for an account using their github account
    Given I am a guest
    And I have a github account
    When I visit the signup page
    And I click the github sign up button
    Then I should see the user greeting for "nickname"

