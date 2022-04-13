1. tab = 2 spaces

2. #comment

3. snake_case
  # Naming a file

  this_is_a_snake_cased_file.rb

  # Assigning a variable

  forty_two = 42

  # Defining a method

  def this_is_a_great_method
  # do stuff
  end

4. constants

  # Constant declaration

  FOUR = 'four'
  FIVE = 5

5. When working with do...end blocks, prefer {} when the entire code expression fits on one line.

    # Multi-line vs single line

  [1, 2, 3].each do |i|
    # do stuff
  end

  [1, 2, 3].each { |i| # do stuff }

6. The last style convention you'll need to learn at this point is how to declare a class name.
  When naming your classes you will use CamelCase formatting.
  CamelCase uses no spaces and capitalizes every word.

class MyFirstClass
end

class MySecondClass
end
