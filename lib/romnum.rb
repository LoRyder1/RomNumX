class RomNumConverter
  attr_reader :roman, :arabic
  def initialize
    @roman = ""
    @arabic = nil
  end

  def convert_arabic num
    @arabic = num
    if num == 1
      @roman = "I"
    elsif num == 2
      @roman = "II"
    elsif num == 3
      @roman = "III"
    end
  end
end