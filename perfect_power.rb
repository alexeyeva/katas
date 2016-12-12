n = gets.to_i

# def existing_a(n, b)
	
# end

def isPP(n)
	for b in 2..(Math.log2(n) + 1) do
		a = n ** (b ** -1)

		a.floor.to_i ** b == n ? a = a.foor.to_i : a = a.ceil.to_i

		return [a, b] if a ** b == n
		break if b == (Math.log2(n) + 1).to_i 
		
		b +=1
	end
end

puts isPP(n)