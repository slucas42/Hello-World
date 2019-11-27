#2.methods.sort
#will give you a list of all the things you can call on the number 2
2.even?
2.real?
2.class

my_string = "a string"
my_string.methods.sort

#the above are irb things

#irb examples. Note this will not run on Sublime
#require.irb - run this to run irb
#if x.even?
		#puts "I am even"
#else
		#puts "i am not even"
#end

#IRB.start
#irb is a repb


#methods = functions
#way to group code and let it run over and over
people = ["cliff", "anne", "sam", "devon"]
#uses a block veriable below
people.each do |person|
	puts person
end

numbers = [1, 3, 5, 777]
numbers.each do |anything|
	puts anything
end

#method
def add_two_numbs(a, b)
	a+b	
end

def add_one(x)
	add_two_numbs(1,x)
end

puts add_two_numbs(3,5)

puts add_one(5)







