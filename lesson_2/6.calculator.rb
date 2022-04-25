require 'yaml'
LANG = ('es')

MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_num?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op) # This is the last code evaluated, so it's returned
  word = case op
         when '1'
           messages('adding', LANG)
         when '2'
           messages('subtracting', LANG)
         when '3'
           messages('multiplying', LANG)
         when '4'
           messages('dividing', LANG)
         end

  word
end

# prompt(messages('choose_language', LANG))

prompt(messages('welcome', LANG))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANG))
  else
    break
  end
end

prompt(messages('greet', LANG) % { :name => name })

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('number1', LANG))
    number1 = Kernel.gets().chomp()

    if valid_num?(number1)
      break
    else
      prompt(messages('valid_number', LANG))
    end
  end

  number2 = ''
  loop do
    prompt(messages('number2', LANG))
    number2 = Kernel.gets().chomp()

    if valid_num?(number2)
      break
    else
      prompt(messages('valid_number', LANG))
    end
  end

# Kernel.puts("The first number is #{number1}, and the second is #{number2}!")
#   operator_prompt = <<-MSG
# What operation would you like to perform?
#   1)Add
#   2)Subtract
#   3)Multiply
#   4)Divide
# MSG
  prompt(messages('operator', LANG))

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if operator == '4' && number2 == '0'
      prompt(messages('div_by_zero', LANG))
      prompt(messages('operator', LANG))
    elsif %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('valid_operator', LANG))
    end
  end

  prompt("#{operation_to_message(operator)}")
  # if operator == '1'
  #   result = number1.to_i() + number2.to_i()
  # elsif operator == '2'
  #   result = number1.to_i() - number2.to_i()
  # elsif operator == '3'
  #   result = number1.to_i() * number2.to_i()
  # else operator == '4'
  #   result = number1.to_f() / number2.to_f()
  # end

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  def again?
    loop do
      answer = gets.chomp
      return false if %w(n no).include?(answer)
      if LANG == 'en'
        return true if %w(y yes).include?(answer)
      elsif %w(s si).include?(answer)
        return true
      end
      prompt('another', LANG)
    end
  end
  prompt(messages('result', LANG) % { :result => result })

  prompt(messages('another', LANG))

  break unless again?
end
system('clear')
prompt(messages('thanks', LANG))
