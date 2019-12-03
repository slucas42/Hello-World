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


Day 3
Here's some stuff we did yesterday:
• "some string".methods.sort 
       looking up Ruby documentation
• going over homework (everyone did a great job!)
• include? with strings OR arrays
       ["here", "is", "an", "array"].include?("an") # true
       "here, is, a, string".include?("is, a,") # true 
• REPL
        Read-Eval-Print-Loop (`irb` is a REPL)
• blocks (brackets vs. do/end)
         10.times { puts "hello" } is the same as
         10.times do
              puts "hello"
         end
• Array#each
         [1,2,3].each do |number| # |number| is called a "block variable"
            puts number * 10
          end
• method definitions
          def greeting(name) # arity 1... 1 argument, a variable called "name"
            puts "Hello, #{name}!!!"
          end
• scope inside/outside methods
          # outside the scope of the method
          x = 1 # this won't be available INSIDE the method
          def add_one(x)
            x + 1
          end
• nested each
          [1,2,3].each do |x|
             [6,7,8,9].each do |y|
                # two loops!
                puts x * y
              end
           end
• nested method calls (try running this code to see what it does)
           def shout(name)
             name.upcase
           end
           def shouty_greeting(name)
              shout("Hello, #{name}")
           end
• Index access to array elements (0 is the first thing, etc.)
           some_array = [ "cliff", "anne", "sam", "devin" ]
           puts some_array[0]
           puts some_array[1]
           puts some_array[2]
           puts some_array[3]
           puts some_array[4] # what happens here!? and why???
• rand()
           rand(4) # random number between 0 and 3
           rand(100) # random number between 0 and 99
• Harry Potter and the `house_assignment` method
           def house_assignment(name)
             houses = [ "Griffendor", "Slytherin", "Hufflepuff", "Ravenclaw", "Devindorff" ]
             random_number = rand(5)
             the_house = houses[random_number]
             puts "#{name} has been sorted to house #{the_house}"
           end
           people = [ "cliff", "anne", "sam", "devin" ]
           people.each do |person|
             house_assignment(person)
           end




