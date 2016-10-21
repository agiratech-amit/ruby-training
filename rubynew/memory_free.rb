class Memory
  def initialize output
  		@output=output
  	end

  def find_Toatal	  
	  puts "Total Space         =>#{@output.split(" ")[7]}"

	  find_Used

	end

	private

	  def find_Used
		puts "Total Used Space    =>#{@output.split(" ")[8]}"

	find_Free

	end

	protected

  def find_Free
		puts "Total Free Space    =>#{@output.split(" ")[9]}"

     find_Shared

    end

  def find_Shared
  	 	puts "Total Shared Spaace =>#{@output.split(" ")[10]}"
   end


end

temp=%x(free)
obj=Memory.new temp
obj.find_Toatal

     

