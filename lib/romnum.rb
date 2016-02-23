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
    @roman = ''
    @arabic = 0
  end

  def convert_arabic input
    @arabic = input
    @roman = ''
    ROMAN_NUMERALS.each_key do |num|
      @roman += ROMAN_NUMERALS[num] * (input/num)
      input = input % num
    end
  end

  def convert_numeral input
    @roman = input
    @arabic = 0
    ROMAN_NUMERALS.values.each do |roman|
      while input.start_with?(roman)
        @arabic += ROMAN_NUMERALS.invert[roman]
        input = input.slice(roman.length, input.length)
      end
    end
  end
end

# if input starts with match; add to solution
# if match; slice the rest of string and redefine input
# 4 and 9 are special cases where you need to define them
# 1, 5, 10 are defined as normal