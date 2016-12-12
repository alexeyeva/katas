s = gets

def closing_symbol(symbol)
	case symbol
	when "{" then return "}"
	when "[" then return "]"
	when "(" then return ")"
	end
end

def count_check(string)
	(string.count("{") == string.count("}")) && (string.count("[") == string.count("]")) && (string.count("(") == string.count(")"))
end

def order_check(string)
	if string.length >= 2
		last_opened_index = string.rindex(/\(|\{|\[/)
		last_opened = string[last_opened_index]
		
		if !string[last_opened_index..-1].index(/\)|\}|\]/).nil?
			next_closed_index = string[last_opened_index..-1].index(/\)|\}|\]/) + last_opened_index
			next_closed = string[next_closed_index]

			if next_closed == closing_symbol(last_opened)
				string.slice!(last_opened_index..next_closed_index)
				order_check(string)
			else
				return false
			end
			return true
		else 
			return false
		end
	end
end

def group_check(s)
	if s =~ /^\s*$/
		return true
	elsif count_check(s)
		order_check(s)
	else
		return false
	end
end

puts group_check(s)