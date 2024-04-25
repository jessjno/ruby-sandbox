EMAIL = "jess@example.com"
PASSWORD = "gocode"
PASSWORD_VAULT = {aws: {username: "jess", password: "jno"}}

puts "Welcome to None Shall Pass - A Password Manager"
puts "Please sign in to continue"
print "Enter email: "

user_email = gets.chomp
p user_email

if user_email == EMAIL
  print "Enter password: "
  user_password = gets.chomp
  else
  puts "Invalid Email"
  end

unless user_password != PASSWORD
  puts "Hello, #{user_email}"
  puts "What would you like to do?"
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing services credentials"
  puts "3. Exit"
  user_selection = gets.chomp
  else 
    puts "Invalid Password"
end

case user_selection
when "1"
  puts "Enter the name of the service: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service] 
  
  print "Enter the username for this new service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[new_service]["username"] = new_service_username

  print "Enter the password for this new service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[new_service]["password"] = new_service_password

  when "2"
  print "Please enter the name of the service you wish to access credentials for: "
  requested_service_name = gets.chomp
  PASSWORD_VAULT[requested_service_name.to_sym]
  credentials = PASSWORD_VAULT[requested_service_name.to_sym]
  puts "Here are the credentials for #{requested_service_name}:"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
else
  puts "EXITING THE PROGRAM"
  exit
end 

