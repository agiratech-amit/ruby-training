class Search
	def str_search
	  word_count = {}
	    File.open("/home/agira/Desktop/AMit/first.txt", "r") do |f|
  		  f.each_line do |line|
            words = line.split(' ').each do |word|
              word_count[word] += 1 if word_count.has_key? word
              word_count[word] = 1 if not word_count.has_key? word
    	   end
          end
        end
    return word_count
    end
end
obj=Search.new
puts "word  count : #{obj.str_search}"

