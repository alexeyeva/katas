def mix(s1, s2)
  compare = Hash.new(0)

  (s1 + s2).chars.uniq.keep_if { |char| char =~ /[a-z]/ }.each do |char|
    
    max_chars = [s1.count(char), s2.count(char)].max
    
    if max_chars > 1
      compare[char * max_chars] = ([s1.count(char), s2.count(char)].index(max_chars) + 1).to_s
      compare[char * max_chars] = "3" if s1.count(char) == s2.count(char) 
    end

  end

  compare.sort_by { |h| [ - h[0].length, h[1], h[0] ] }.map { |a| a.reverse.join(":") }.join("/").gsub("3", "=")
end


p mix("Are they here", "yes, they are here") == "2:eeeee/2:yy/=:hh/=:rr"
p mix("looping is fun but dangerous", "less dangerous than coding") == "1:ooo/1:uuu/2:sss/=:nnn/1:ii/2:aa/2:dd/2:ee/=:gg"
p mix(" In many languages", " there's a pair of functions") == "1:aaa/1:nnn/1:gg/2:ee/2:ff/2:ii/2:oo/2:rr/2:ss/2:tt"
p mix("Lords of the Fallen", "gamekult") == "1:ee/1:ll/1:oo"
p mix("codewars", "codewars") == ""
p mix("A generation must confront the looming ", "codewarrs") == "1:nnnnn/1:ooooo/1:tttt/1:eee/1:gg/1:ii/1:mm/=:rr"