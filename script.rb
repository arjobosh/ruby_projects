require 'pry'

def double_words_in_phrase(string)
    string_array = string.split(' ')
    string_array.map { |word| word * 2 }
    string_array.join(' ')

end

#double_words_in_phrase("This is a test")

def yell_greeting(string)
    name = string

    binding.pry

    name = name.upcase
    greeting = "WASSAP, #{name}!"
    puts greeting

end

#yell_greeting("bob")

def FizzBuzz()
    print "Please enter the number you would like to FizzBuzz up to: "
    max_num = gets.chomp.to_i
    #puts max_num
    1.upto(max_num) do |cur_num|
        if cur_num % 3 == 0 && cur_num % 5 == 0
            puts "FizzBuzz"
        elsif cur_num % 3 == 0
            puts "Fizz"
        elsif cur_num % 5 == 0
            puts "Buzz"
        else
            puts cur_num
        end
    end
end

