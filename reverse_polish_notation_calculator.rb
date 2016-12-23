def calc(expr)
	stack = []

  expr.split(" ").each do |char|
  	stack.push(char.to_f) if char =~ /[-+]?([0-9]*\.[0-9]+|[0-9]+)/

  	stack.push(stack.pop(2).reduce(char)) if char =~ /\+|\-|\*|\//
  end

  return 0 if stack.empty?

  return stack.last
end

p calc("") #0
p calc("1 2 3") #3
p calc("1 2 3.5") #3.5
p calc("1 3 +") #4
p calc("1 3 *") #3
p calc("1 3 -") #-2
p calc("4 2 /") #2