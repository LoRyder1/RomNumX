Given(/^I have started the converter$/) do
  @converter = RomaNumConverter.new
end

When(/^I enter (\d+)$/) do |num|
  @converter.convert_arabic(num)
end

Then(/^("(.*?)") is returned/) do |numeral|
  expect(@converter.numeral).to eq "I"
end
