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

    ones = {"1" => "one","2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine"}

    tens = {"0" => "ten", "1" => "eleven", "2" => "twelve", "3" => "thirteen", "4" => "fourteen", "5" => "fifteen", "6" => "sixteen", "7" => "seventeen", "8" => "eighteen", "9" => "nineteen"}

    deca = {"2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}

    if (@numeronym > 99)
      word = ones[number_string[-3]] + " hundred " + deca[number_string[-2]] + " " + ones[number_string[-1]]
    elsif (@numeronym > 19)
      word = deca[number_string[-2]] + " " + ones[number_string[-1]]
    elsif (@numeronym > 9)
      word = tens[number_string[-1]]
    else
      word = ones[number_string[0]]
    end
    word
  end
end


# if ((number_string[-2] != nil) & (number_string[-2] != "1"))
#   word = deca[number_string[-2]] + " " + ones[number_string[-1]]
# elsif
#   (number_string[-2] === "1")
#   word = tens[number_string[-2]]
# else
#   word = ones[number_string[0]]
# end

  # def hundred_plus
  #
  #   wordPlus =""
  #   number_string = @numeronym.to_s().chars
  #
  #   ones = {"0" => "", "1" => "one","2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine"}
  #
  #   tens = {"10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen"}
  #
  #   deca = {"2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
  #
  #   if ((number_string[-3] != nil)
  #     wordPlus = ones[number_string[-3] + " " + wordDeca
  #
  #
  #   end
  # end
