require "prime"

array = gets.split.map(&:to_i)

def sumOfDivided(array)
	array.each_with_object(Hash.new(0)) do |i, result|
		for prime_factor in 2..i.abs do
			result[prime_factor] += i if ((i.to_f / prime_factor) % 1 == 0) && Prime.prime?(prime_factor)
		end
	end.to_a.sort
end

puts "#{sumOfDivided(array)}"