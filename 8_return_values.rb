# Return values

# Suppose we want to do some data analysis.
# Eventually, I want to print the standard deviation of a set of numbers.
# The actual commands to do that are at the very bottom of this file.

# First, let me define some tools:

# To find the sum of a set of numbers,
#  - we start with 0
#  - for each number in the set,
#   - we add it to the running total

def sum(list_of_numbers)
  running_total = 0
  list_of_numbers.each do |number|
    running_total = running_total + number
  end

  return running_total
end

# To find the mean of a set,
#  - we sum up all the elements
#  - then we divide the sum by the number of elements in the set
def mean(list_of_numbers)
  # Let's re-use the work we did above in the sum method
  total = sum(list_of_numbers)

  return total.to_f / list_of_numbers.length
end

# To find the variance of a set,
#  - we find the mean of the set
#  - for each number in the set,
#   - we find the difference between the number and the mean
#   - we square the difference
#  - the variance is the mean of the squared differences
def variance(list_of_numbers)
  # Let's re-use the work we did above in the mean method
  average = mean(list_of_numbers)

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
  return Math.sqrt(variance(list_of_numbers)) # We re-use our variance method
end

data = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]

puts "The standard deviation is #{standard_deviation(data)}."
