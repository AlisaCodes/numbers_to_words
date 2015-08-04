class Fixnum
  define_method(:numbers_to_words) do
    final_word = nil
    double_digits = []
    number_words = {  "0" => "zero",
                      "1" => "one",
                      "2" => "two",
                      "3" => "three",
                      "4" => "four",
                      "5" => "five",
                      "6" => "six",
                      "7" => "seven",
                      "8" => "eight",
                      "9" => "nine",
                      "10" => "ten",
                      "11" => "eleven",
                      "12" => "twelve",
                      "13" => "thirteen",
                      "14" => "fourteen",
                      "15" => "fifteen",
                      "16" => "sixteen",
                      "17" => "seventeen",
                      "18" => "eighteen",
                      "19" => "nineteen" }

      integars = {  0 => "zero",
                    1 => "one",
                    2 => "two",
                    3 => "three",
                    4 => "four",
                    5 => "five",
                    6 => "six",
                    7 => "seven",
                    8 => "eight",
                    9 => "nine",
                    10 => "ten",
                    11 => "eleven",
                    12 => "twelve",
                    13 => "thirteen",
                    14 => "fourteen",
                    15 => "fifteen",
                    16 => "sixteen",
                    17 => "seventeen",
                    18 => "eighteen",
                    19 => "nineteen" }

    number_place = {  "20" => "twenty",
                      "30" => "thirty",
                      "40" => "fourty",
                      "50" => "fifty",
                      "60" => "sixty",
                      "70" => "seventy",
                      "80" => "eighty",
                      "90" => "ninety",
                      "100" => "hundred",
                      "1000" => "thousand",
                      "1000000" => "million",
                      "1000000000" => "billion",
                      "1000000000000" => "trillion" }

    number_string = to_s().split('')
    number_length = number_string.length()

    if self.<(20)
      final_word = integars.fetch(self)

    elsif number_length.==(2) && self.>(19)
      first_number = number_string.shift()
      double_digits.push(first_number)
      double_digits.push('0' * number_length.-(1))
      double_digits = double_digits.join()
      final_word = number_place.fetch(double_digits) + " " + number_words.fetch(number_string.join())
    end
    final_word
  end
end
