ROMAN_NUMERALS = {
  1 => "I"
}
class RomNumConverter
  attr_reader :roman, :arabic
  def initialize
    @roman = ""
    @arabic = nil
  end

  def convert_arabic input
    @arabic = input
    ROMAN_NUMERALS.each_key do |num|
      @roman += ROMAN_NUMERALS[num] * (input/num)
    end
  end
end