class ReadText
                              
  def self.read
  	
	  f1 = File.open('/home/agira/Desktop/AMit/first.txt')
	     f2 = File.open('/home/agira/Desktop/AMit/second.txt')

			 file1lines = f1.readlines
			 file2lines = f2.readlines

	 	 	 file1lines.each do |e|
    	 	 if(file2lines.include?(e))
     	 	 puts e
        	end
	     end
	    
	end
end

ReadText.read 