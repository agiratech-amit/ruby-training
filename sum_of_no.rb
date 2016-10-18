#Sum of digits of a number program using recursion

class Add
	
	
def sum_of_no num
    temp=0
    while num>0
    temp+=(num%10)
    num=num/10
    end
   return temp
end
end
p "enter any number"
num=gets.to_i
obj=Add.new  #creating object
print "the sum of no is=\n#{obj.sum_of_no num}\n" #passing argument and printing return value
   






