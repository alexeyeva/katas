def min_value(array, n)
  return "sorry wrong walue of n" if n > array.length
  
  arr = []

  for i in 0..array.length-1 do
    arr << array[i..(i + n - 1)].min if !array[i + n - 1].nil?
  end

  return arr
end

puts "enter the array of numbers just split by space"
array = gets.split(" ").map(&:to_i)

puts "enter n"
n = gets.to_i

puts(min_value(array, n))