Given(/^I have started the converter$/) do
  @converter = RomNumConverter.new
end

When(/^I enter (\d+)$/) do |num|
  @converter.convert_arabic(num)
end

Then(/^"(.*?)" is returned/) do |numeral|
  expect(@converter.roman).to eq numeral
end

############################

When(/^I enter "(.*?)"/) do |numeral|
  @converter.convert_numeral(numeral)
end

Then(/^(\d+) is returned$/) do |num|
  expect(@converter.arabic).to eq num
end