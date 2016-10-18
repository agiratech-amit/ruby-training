#Program to replace string in a file with another string

class Replace
	def replace_string
		f1 = ['/home/agira/Desktop/AMit/first.txt']
		  f1.each do |f1|
		  text=File.read(f1)
		  new_contents=text.gsub(/Kolkata ==> JOY OF CITY/,"Kolkata ==> City Of Joy")
		  #puts new_contents
		  File.open(f1, "w") {|file| file.puts new_contents }
		  return new_contents

		end
		
    end
end

obj=Replace.new
puts "#{obj.replace_string}"
