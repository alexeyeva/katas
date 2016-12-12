s = gets

def longest_palindrome s
  array = s.downcase.chars
  s.length.downto(1) do |n|
    palindrome = array.each_cons(n).find { |b| b == b.reverse }
    return palindrome.join.length if palindrome
  end
end

puts longest_palindrome(s)
