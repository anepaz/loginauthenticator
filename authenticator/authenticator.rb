users = [
	{ username: "poporo", password: "password1" },
	{ username: "flow", password: "password2" },
	{ username: "moratti", password: "password3" },
	{ username: "hajima", password: "password4" },
	{ username: "ratatouille", password: "password5" },

]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|

		if user_record[:username] == username && user_record[:password] == password
			return user_record			
		end
	end
	"Credentials were not correct"
end

puts "Authenticate your Credentials"
35.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
	print "Username: "
	username = gets.chomp
	print "Password: "
	password = gets.chomp
	authentication = auth_user(username, password, users)
	puts authentication

	puts "Press n to quit or Enter to continue: "
	input = gets.chomp.downcase 
	break if input == "n"
	attempts += 1

	
end

puts "You have exceeded the number of attempts." if attempts == 4