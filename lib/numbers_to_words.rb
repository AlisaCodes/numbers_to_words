class Fixnum
  define_method(:numbers_to_words) do
    final_word = nil
    number_words = {  "1" => "one",
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
      number_string.each() do |digit|
        number_position = number_string.index(digit)
        repeat_digits_position = number_string.rindex(digit)
        if number_length.==(1)
          final_word = number_words.fetch(digit)
        elsif number_length.==(2) && repeat_digits_position.==(1)
          eleventys = number_string.join()
          final_word = number_words.fetch(eleventys)
        end
      end
      final_word
  end
end
