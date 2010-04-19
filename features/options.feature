Feature: Passing options to cucumber
  In order to use cucumber options
  As a puppet manifest developer
  I want to pass options to cucumber

  Background:
    Given an uninitialized directory tree

  Scenario: Pass simple options
    When I generate "world"
    And I call cucumber-puppet with option "--help"
    Then I should see cucumber's help text

  Scenario: Pass options with arguments
    When I generate "feature foo bar"
    And I call cucumber-puppet with option "--name foo"
    Then I should see "0 scenarios"

#  Scenario: Pass options with arguments and feature files
