class Memory
  def self.freeram

output=%x(free)
output.split(" ")[7]
output.split(" ")[8]
output.split(" ")[9]

end
end

Memory.freeram

     

