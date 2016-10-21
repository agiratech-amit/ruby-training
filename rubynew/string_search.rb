class Search
  def initialize f1
    @f1=f1
    @word_count = {}
 end
	  def str_search
    	   @f1.each_line do |line|
              words = line.split(' ').each do |word|
              @word_count[word] += 1 if @word_count.has_key? word
              @word_count[word] = 1 if not @word_count.has_key? word
    	     end        
        end
     return @word_count
   end
end

File.open("/home/agira/Desktop/AMit/first.txt", "r") do |f|

  obj=Search.new f
  puts "word  count : #{obj.str_search}"
end


