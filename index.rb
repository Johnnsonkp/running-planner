require_relative "methods"
require_relative "user"

#Handle command line arguments

#Assigning the user
user = User.new("test","test", "test", "test", "test", "test")
user_hash = []

begin

while true 
    welcome_greeting
    case menu_input_select

    when 1 # To create a new user
        new_user
        intermittent
    when 2 # To display user account details
        puts user.display_user_info
        intermittent
    when 5
        quit_program
    end
end

end

