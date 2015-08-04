class Fixnum
  define_method(:numbers_to_words) do
    single_digits = {1 => "one",
                     2 => "two",
                     3 => "three",
                     4 => "four",
                     5 => "five",
                     6 => "six",
                     7 => "seven",
                     8 => "eight",
                     9 => "nine"}

    single_digits.fetch(self)                 
  end
end
