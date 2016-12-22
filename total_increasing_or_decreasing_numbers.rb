def increasing(n)
	@c = []

	for i in 0..9
		subarray = Array.new((n - 1), 0)
		subarray[0] = 10 - i

		i += 1

		@c.push(subarray)
	end

	9.downto(0) do |i|
		for j in 1..(n - 1)

			@c[i][j] = @c[i][j - 1] + (@c[i + 1] ? @c[i + 1][j] : 0)

			j += 1
		end

		i -= 1
	end

	return @c.first
end

def total_inc_dec(x)
	number = 10 ** x
	return 1 if x == 0

	increasing_array = increasing(number.to_s.length - 1)
	decreasing_number = increasing_array.reduce(:+)

	return increasing_array.last + decreasing_number - 10 * (number.to_s.length - 1)

end

p total_inc_dec(0) #1
p total_inc_dec(1) #10
p total_inc_dec(2) #100
p total_inc_dec(3) #475
p total_inc_dec(4) #1675
p total_inc_dec(10) #1675
# total_inc_dec(x)