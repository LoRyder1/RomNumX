class RomNumConverter
  attr_reader :roman, :arabic
  def initialize
    @roman = ""
    @arabic = nil
  end

  def convert_arabic num
    @arabic = num
    @roman = "I"
  end
end