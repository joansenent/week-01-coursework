require_relative './lib/account'

print "Thanks for opening an account with us. How much money do you want to deposit (GBP)?"

balance = gets.chomp().to_i

account_balance = Account.new(balance)

print "What do you want to do, deposit(d) or withdraw(w): "

decision = gets.chomp()

if decision == "d"
	print "How much money do you want to deposit?"
	deposit_amount = gets.chomp().to_i
	puts " your new balance is: #{account_balance.deposit(deposit_amount)}"

	elsif decision == "w" 
		print "How much money do you want to withdraw?"
		withdraw_amount = gets.chomp().to_i
		puts " your new balance is: #{account_balance.withdraw(withdraw_amount)}"

	else
		puts "value not correct"

end