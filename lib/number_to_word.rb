class Numeronym
  def initialize(numeronym)
    @numeronym = numeronym
  end

  def numeronym
    @numeronym
  end

  def convert
    word = ""
    number_string = @numeronym.to_s().chars

    ones = {"1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine"}
    word = ones[number_string[0]]
    word
  end

end
