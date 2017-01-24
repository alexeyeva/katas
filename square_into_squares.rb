@n = gets.to_i

@result = []
@res = []

def calculate(a, sum)
	if (a == 0) || (@result.map { |n| n ** 2 }.reduce(:+) == sum)
		return @result
	elsif (a ** 2) == sum
		puts "a: #{a}"
		puts "a - 1: #{a - 1}"
		puts "(a-1)**2: #{(a - 1) ** 2}"
		puts "a ** 2: #{a ** 2}"
		calculate(a - 1, sum)
	else
		k = a.floor

		@result << k

		puts "result #{@result}"

		puts "k: #{k}"

		calculate(Math.sqrt(sum - k ** 2).floor, sum - k ** 2)
	end
end

def decompose(a)
	calculate(a, a ** 2)

	if @result.uniq.length < @result.length
		shift = @result.shift
		@res << shift if !@res.empty? && (@res.last > shift)
		b = @result.first
		@result = []
		calculate(b, a ** 2)
		return @result = @res
	else
		puts "#{@result}"
	end

end

puts "decompose: #{decompose(@n)}"