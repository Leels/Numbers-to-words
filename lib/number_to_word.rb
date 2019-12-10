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
    ones = {"0" => "", "1" => "one","2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine"}

    tens = {"10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen"}

    if (number_string[-2] === "1")
      word = tens[number_string[-2] + number_string[-1]]
    else
      word = ones[number_string[0]]
    end



    deca = {"20" => "twenty", "30" => "thirty", "40" => "forty", "50" => "fifty", "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety"}
    # word = ones[number_string[0]]
    word
  end

end
