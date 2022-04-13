# Ask the user for 2 numbers
# Ask for the operation
# Display the result

Kernel.puts("Type a number.")
number1 = Kernel.gets().chomp()
Kernel.puts("Type another number.")
number2 = Kernel.gets().chomp()

#Kernel.puts("The first number is #{number1}, and the second is #{number2}!")
Kernel.puts("What operation would you like to perform? 1)Add 2)Subtract 3)Multiply 4)Divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else operator == '4'
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")
