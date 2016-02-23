ROMAN_NUMERALS = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
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