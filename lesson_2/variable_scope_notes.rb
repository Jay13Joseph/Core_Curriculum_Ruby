# method definition:
name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

print_full_name 'Peter', 'Henry'   # prints Peter Henry
print_full_name 'Lynn', 'Blake'    # prints Lynn Blake
print_full_name 'Kim', 'Johansson' # prints Kim Johansson
puts name                          # prints Somebody Else

# Only variables initialized within the method's body can be referenced or modified from within the method's body.
# Additionally, variables initialized inside a method's body aren't available outside the method's body.
# It's a bit like an impenetrable bubble.

# block:

total = 0
[1, 2, 3].each { |number| total += number }
puts total # 6

# or:

total = 0
[1, 2, 3].each do |number|
  total += number
end
puts total # 6

# In both cases, the code can access and modify variables that are defined outside of the block.
# Thus, both blocks can access and modify total.
# However, any variables initialized inside the block (such as number) can't be accessed by the outer code.
