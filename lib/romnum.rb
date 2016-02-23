ROMAN_NUMERALS = {
  5 => "V",
  4 => "IV",
  1 => "I"
}
class RomNumConverter
  attr_reader :roman, :arabic
  def initialize
    @roman = ""
    @arabic = nil
  end

  def convert_arabic input
    @roman = ""
    @arabic = input
    ROMAN_NUMERALS.each_key do |num|
      @roman += ROMAN_NUMERALS[num] * (input/num)
      input = input % num
    end
  end
end