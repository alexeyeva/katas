str = gets
split_p = gets

#split_p = " |"

def split_without_loss(str, split_p)
	puts "#{str.gsub(split_p.split("|").join, split_p).split("|").delete_if {|a| a.empty?}}"
end

# split_without_loss(str, split_p)
split_without_loss("hello world!", " |") #["hello ", "world!"]
split_without_loss("hello world!", "o|rl") #["hello wo", "rld!"]
split_without_loss("hello world!", "ello| ") #["hello", " world!"]
split_without_loss("hello world!", "hello wo|rld!") #["hello wo", "rld!"]
split_without_loss("hello world!", "h|ello world!") #["h", "ello world!"]
split_without_loss("aaaa", "|aa")