# Return values

# Suppose we want to do some data analysis.
# Eventually, I want to print the standard deviation of a set of numbers.
# First, let me define some methods:

# To find the mean of a set,
#  - we sum up all the elements
#  - then we divide the sum by the number of elements in the set
def mean(list_of_numbers)
  sum = 0
  list_of_numbers.each do |number|
    sum = sum + number
  end

  return sum.to_f / list_of_numbers.length
end

# To find the variance of a set,
#  - we find the mean of the set
#  - for each number in the set,
#   - we find the difference between the number and the mean
#   - we square the difference
#  - the variance is the mean of the squared differences
def variance(list_of_numbers)
  average = mean(list_of_numbers) # Here we re-use the work we did above in the mean method

  list_of_squared_differences = []
  list_of_numbers.each do |number|
    squared_difference = (number - average)**2
    list_of_squared_differences << squared_difference
  end

  return mean(list_of_squared_differences) # Again, we re-use our mean method
end

# To find the standard deviation of a set,
#  - take the square root of the variance
def standard_deviation(list_of_numbers)
  variance = variance(list_of_numbers) # We re-use our variance method

  return Math.sqrt(var)
end

data = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]

puts "The standard deviation is #{standard_deviation(data)}."
