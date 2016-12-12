rgb = gets.split.map(&:to_i)
r = rgb[0]
g = rgb[1]
b = rgb[2]

def rgb(r, g, b)
	rgb = [r, g, b]

	rgb.map do |color|
		if color > 255
			255.to_s(16)
		elsif (color < 0) || (color == 0)
			"00"
		else
			color.to_s(16)
		end
	end.join.upcase
end

puts rgb(r, g, b)