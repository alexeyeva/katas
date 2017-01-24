number = gets.to_i
awesome_phrases = gets.split.map(&:to_i)

def is_followed_by_zeros?(number)
	number.to_f / (10 ** (number.to_s.length - 1)) % 1 == 0
end

def is_every_digit_the_same_number?(number)
	number_in_array(number).uniq.length == 1
end

def is_incrementing_or_decrementing?(number)
	"1234567890".include?(number.to_s) || "9876543210".include?(number.to_s)
end

def is_palindrome?(number)
	number_in_array(number) == number_in_array(number).reverse
end

def is_matching_awesome_phrases?(number, awesome_phrases)
	awesome_phrases.include?(number)
end

def number_in_array(number)
	number.to_s.chars.map(&:to_i)
end

def is_interesting?(number, awesome_phrases)
	is_followed_by_zeros?(number) || 
	is_every_digit_the_same_number?(number_in_array(number)) ||
	is_incrementing_or_decrementing?(number) ||
	is_palindrome?(number_in_array(number)) ||
	is_matching_awesome_phrases?(number, awesome_phrases)
end

def is_interesting(number, awesome_phrases)
	return 2 if is_interesting?(number, awesome_phrases) && number > 99

	return 1 if (is_interesting?(number + 1, awesome_phrases) || 
							is_interesting?(number + 2, awesome_phrases)) && 
							number > 97
							
	return 0

end

puts is_interesting(number, awesome_phrases)