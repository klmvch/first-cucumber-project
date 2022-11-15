@wip
Feature: The Internet Guinea Pig Website

  # Scenario Outline: As a user, I can log into the secure area

  #  Given I am on the "login" page
  #  When I login with <username> and <password>
  #  Then I should see a flash message saying "<message>"

  #  Examples:
  #    | username | password             | message                        |
  #    | tomsmith | SuperSecretPassword! | You logged into a secure area! |
  #    | foobar   | barfoo               | Your username is invalid!      |
  Background:
    Given I am on the "login" page

  @successfulLogin
  Scenario: As a user, I can log ino the secure area
  #  Given I am on the "login" page
    When I login with tomsmith and SuperSecretPassword!
    Then I should see a flash message saying "You logged into a secure area!"

  @unsuccessfulLogin
  Scenario: As a user, I cannot log ino the secure area
  #  Given I am on the "login" page
    When I login with foobar and barfoo
    Then I should see a flash message saying "Your username is invalid!"
