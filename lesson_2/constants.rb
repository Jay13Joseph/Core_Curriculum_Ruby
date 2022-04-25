USERNAME = 'Batman'

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate    # => Logging in Batman

FAVORITE_COLOR = 'taupe'

1.times do
  puts "I love #{FAVORITE_COLOR}!"  # => I love taupe!
end

loop do
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM    # => Phoenix Suns
