puts "Enter the group for check pls:"
@s = gets

def count_check(s)
  (s.count("{") == s.count("}")) && (s.count("[") == s.count("]")) && (s.count("(") == s.count(")"))
end

def opening_symbol(symbol)
  case symbol
  when "}" then "{"
  when "]" then "["
  when ")" then "("
  end
end

def order_check(s)
  s.split("").map.with_index do |symbol, index|
    first_closed_index = index if symbol =~ /\}|\]|\)/
    if first_closed_index
      @s[@s[0..first_closed_index].rindex(/\{|\[|\(/)] == opening_symbol(symbol) ? true : false
    end
  end.compact
end

def group_check(s)
  # count_check(s) && 
  order_check(s) == true ? true : false
  puts "order check #{order_check(s)}"
end


puts group_check(@s)

