string = gets

BRACKETS = {"{" => "}", "[" => "]", "(" => ")"}

def group_check(s)
	flag = false

	if s =~ /^\s*$/
		flag = true
	else
		opened = []

		s.chars.map do |char|
			opened.push(char) if char =~ /\{|\[|\(/
			if char =~ /\}|\]|\)/
				last_opened = opened.pop
				if !last_opened.nil? && char == BRACKETS[last_opened]
					flag = true
				else
					return false
				end
			end
		end
		flag = false if !opened.empty?
	end

	return flag
end

puts group_check(string)