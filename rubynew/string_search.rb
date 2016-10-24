class SearchString

  def initialize(file_1)
    @file_1=file_1
    @word_count = {}
  end
	def search_str
    @file_1.each_line do |line|
    words = line.split(' ').each do |word|
    @word_count[word] += 1 if @word_count.has_key? word
    @word_count[word] = 1 if not @word_count.has_key? word
    end
    end
    return @word_count
  end
end

File.open("/home/agira/Desktop/AMit/first.txt", "r") do |file|
  obj=SearchString.new(file)
  puts "word count : #{obj.search_str}"
end


