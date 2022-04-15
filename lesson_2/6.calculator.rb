# Ask the user for 2 numbers
# Ask for the operation
# Display the result
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op) # This is the last code evaluated, so it's returned
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Welcome to the Calculator! Enter your name:')

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Write a valid name.")
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt('Type a number.')
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("That doesn't look like a valid number.")
    end
  end

  number2 = ''
  loop do
    prompt('Type another number.')
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("That doesn't look like a valid number.")
    end
  end

  # Kernel.puts("The first number is #{number1}, and the second is #{number2}!")
  operator_prompt = <<-MSG
What operation would you like to perform?
  1)Add
  2)Subtract
  3)Multiply
  4)Divide
MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
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

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to do it again.)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for using the calculator!")
