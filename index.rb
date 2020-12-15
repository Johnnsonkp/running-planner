require_relative "methods"
require_relative "user"

#Handle command line arguments

#Assigning the user
user = User.new("test","test")



welcome_greeting
case menu_input_select
when 1 
    adding = true
    while adding 
        puts "What is your name?"
        name = gets.chomp
        if(name.length > 1)
            puts "##########"
            puts "welcome #{user.user_name(name)}"
            puts "##########"
            adding = false
        else
            puts "invalid name, try again"
        end   
    end

    while adding == false
        puts "Whats is your goal?"
        goal = user.goal_input
        puts "\t Your goal is to #{goal}"
    end
end
