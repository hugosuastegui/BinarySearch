=begin
ASK for number between 1 and n
GET number
ASK is your number #{rand(1..n)}?
IF "Si"
END method
ELSE
  ASK if number is below n/2?
  IF "Si"
  ASK is your number #{rand(1..n/2)}?
    IF "Si"
      END method
  ELSE
  ASK is your number #{rand(n/2..n)}
  IF "Si"
    END method
=end
def middle(lower, upper)
  (upper - lower)/2 + lower
end

def binary_search
  puts "Piensa en un número del 1 al 100"
  upper_limit = 100
  lower_limit = 0
  loop do
    puts "Is your number below #{middle(lower_limit, upper_limit)}?"
    p upper_limit, lower_limit
    ans = gets.chomp
    if ans == "SI"
      upper_limit = middle(lower_limit, upper_limit)
    else 
      lower_limit = middle(lower_limit, upper_limit)
    end
    puts "Is your number #{rand(lower_limit..upper_limit)}"
    ans2 = gets.chomp
  break if ans2 == "SI"
  end
  puts "¡Ganaste compadre!"
end

binary_search


