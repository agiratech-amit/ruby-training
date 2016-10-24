class FetchData

  def initialize(r1,r2)
    @r1=r1
    @r2=r2
    @file1lines
    @file2lines
  end
  private
  def read_data
    @file1lines=@r1.readlines
    @file2lines=@r2.readlines
  end
end

class Operation < FetchData

  #displaying data
  def display
    read_data
    @file1lines.each do |e|
      if(@file2lines.include?(e))
        puts e
      end
    end
  end
end

#reading text file
f1=File.open('/home/agira/Desktop/AMit/first.txt')
f2=File.open('/home/agira/Desktop/AMit/second.txt')
#creating object
obj1=Operation.new(f1,f2)
puts "Fetching data from your text file......."
puts "These are the matching strings"
puts "\n"
obj1.display