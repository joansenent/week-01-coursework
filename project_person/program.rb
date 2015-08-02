require_relative 'person'

print "please tell me your name: "
first_name = gets.chomp()

print "please tell me your last name: "
second_name = gets.chomp()

parent_name = Person.new(first_name, second_name)

puts "hello #{parent_name.full_name}"

print "please tell me the name of your child: "
child_name = gets.chomp()

parent_name.set_first_name(child_name)

puts "the full name of your child is #{parent_name.full_name}"

