n  = gets

def digital_root(n)

  if n.to_s.length > 1
    
    return digital_root(n.to_s.chars.map(&:to_i).reduce(:+))
  else

    return n

  end

end

puts digital_root(n)