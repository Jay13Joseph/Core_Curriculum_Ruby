def prompt(message)
  puts("=>#{message}")
end

prompt "Welcome to the mortgage calculator!"

loop do
  prompt "How much do you need to borrow?"

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt "Must enter a valid number."
    else
      break
    end
  end

  prompt "What % is the APR?"

  apr = ''
  apr_percent = ''
  loop do
    apr = gets.chomp

    apr_percent = apr.to_f / 100
    if apr.empty?() || apr.to_f < 0
      prompt "Enter a number between 1-100"
    else
      break
    end
  end
  prompt "The APR is #{apr_percent}"

  prompt "How many years do you need to pay off the loan?"
  years = ''
  # loan_duration = ''
  loop do
    years = gets.chomp

    if years.empty? || years.to_i < 0
      prompt "Enter a valid number."
    else
      break
    end
  end

  monthly_interest = (apr_percent / 12)
  loan_duration = years.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest.to_f /
                    (1 - (1 + monthly_interest.to_f)**(-loan_duration.to_i)))

  prompt "Your monthly payment is $#{format('%.2f', monthly_payment)}"
  prompt "Would you like to use the calculator again? 'Y' if yes."
  answer = gets.chomp.downcase
  break unless answer == 'y'
end
