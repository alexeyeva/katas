string = gets

def valid_parentheses(string)
	lambda { |s| s != string ? valid_parentheses(s) : s == ""	}.(string.gsub(/[^\(|\)]/, "").gsub("()", ""))
end

puts valid_parentheses(string)