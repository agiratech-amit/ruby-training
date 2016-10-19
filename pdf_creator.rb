require "prawn"
class Pdf_detail
	def self.employepdf
        puts "Enter employee name"
        name=gets
        puts "Enter employee contact no"
        mob=gets
        Prawn::Document.generate("employee.pdf") do
        text "Employee Name: #{name}"
        text "Contact Info: #{mob}"
        image open("/home/agira/Desktop/AMit/amit.png")
    end
end
end
Pdf_detail.employepdf