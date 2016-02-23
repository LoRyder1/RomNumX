Feature: Arabic to Roman Numerals
As a game developer
I want to be able to convert a number to a numeral
So that I can label my game releases using Roman numerals

  Scenario: Converting arabic number to roman numeral
  Given I have started the converter
  When I enter 1
  Then "I" is returned
  When I enter 3
  Then "III" is returned
  When I enter 4
  Then "IV" is returned
  