Feature: Roman to Arabic Numerals
As a marketing manager
I want customers to be able to convert numerals to numbers
So that they can buy the latest version of the game

  Scenario: Converting roman numerals to arabic numbers
  Given I have started the converter
  When I enter "I"
  Then 1 is returned
  When I enter "III"
  Then 3 is returned
  When I enter "IV"
  Then 4 is returned
