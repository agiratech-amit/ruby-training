class MemoryCount

  def initialize(output)
    #initializing output
    @output=output
  end
  def find_total_size
    puts "Total Space=>#{@output.split(" ")[7]}"
    #calling another private method
    find_used_memory
  end
  private
  def find_used_memory
    puts "Total Used Space=>#{@output.split(" ")[8]}"
    #calling another protected method
    find_available_memory
  end
  protected
  def find_available_memory
    puts "Total Free Space=>#{@output.split(" ")[9]}"
    #calling another method
    find_shared_memory
  end
  def find_shared_memory
    puts "Total Shared Spaace =>#{@output.split(" ")[10]}"
  end
end

temp=%x(free)
obj=Memory.new(temp)
obj.find_total_size