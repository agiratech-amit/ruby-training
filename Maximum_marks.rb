require 'spreadsheet'
 class Excel
      def self.maximum    
          a=Array.new
      	  Spreadsheet.open('/home/agira/Desktop/AMit/ruby.xls') do |book|
      	  book.worksheet('Sheet1').each do |col|
      	  a.push(col[1])
      	  break if col[0].nil?    
      	      puts col.join(',')
      	    end
      	   return a
    	end
   end
end
 
puts "maximum marks #{(Excel.maximum).max}"


