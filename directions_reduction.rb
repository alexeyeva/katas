array = gets.upcase.split
# array = ["NORTH", "NORTH", "SOUTH", "EAST", "EAST", "WEST", "NORTH"]

NOT_REDUCIBLE = ["NORTH", "WEST", "SOUTH", "EAST"]

REDUCIBLE_DIRECTIONS = {"NORTH" => "SOUTH", "SOUTH" => "NORTH", "WEST" => "EAST", "EAST" => "WEST"}

def dirReduc(array)
	return array if array == NOT_REDUCIBLE || array.empty?

	new_array = []

	array.each do |direction|
		if new_array.last != REDUCIBLE_DIRECTIONS[direction]
			new_array << direction
		else
			new_array.pop
		end
	end

	return new_array	
end

puts dirReduc(array)