require_relative "methods"
require_relative "user"

#Handle command line arguments

#Assigning the user
user = User.new("test","test", "test", "test", "test", "test", "test")
user_hash = user.display_user_info
# user_hash ||= Group.new("Test Group", "./group/array.txt")



begin

while true 
    welcome_greeting
    case menu_input_select

    when 1 # To create a new user
        adding = true
        while adding 
            system "clear"
            puts "What is your name?"
            puts " "
            name = gets.chomp
            # user_hash[:name] = name
            if(name.length > 0)
                system "clear"
                puts "##########################"
                puts "Welcome #{user.user_name(name)}"
                puts "##########################"
                puts " "
                adding = false
            else
                puts "invalid name, try again"
            end   
        end

        while adding == false
            puts " "
            puts "Whats is your goal?"
            puts " "
            goal_question
            input = gets.chomp
            # user_hash[:goal] = user.goal_input(input)
            if(input.to_i == 1) 
                puts = "#{user.goal_input(1)}"
                # user_hash[:goal] = user.goal_input(1)
            elsif(input == 2)
                puts = "#{user.goal_input(2)}"
                # user_hash[:goal] = user.goal_input(2)
            elsif(input == 3)
                puts = "#{user.goal_input(3)}"
                # user_hash[:goal] = user.goal_input(3)
            end
            adding = true 
        end

        while adding == true
            puts " "
            puts "What is your experience?"
            puts " "
            case experience_input
            when 1
                puts = "#{user.experience(1)}"
                # user_hash[:experience] = user.experience(1)
            when 2
                puts = "#{user.experience(2)}"
                # user_hash[:experience] = user.experience(2)
            when 3
                puts = "#{user.experience(3)}"
                # user_hash[:experience] = user.experience(3)
            end
            adding = false
        end

        while adding == false
            puts " "
            puts "Are there any days you're unable to workout?"
            puts " "
            case days_off
            # user_hash[:days_off] = user.days_off("#{days_off}")
            when 1
                puts = "#{user.days_off(1)}"
                # user_hash[:days_off] = user.days_off(1)
            when 2
                puts = "#{user.days_off(2)}"
                # user_hash[:days_off] = user.days_off(2)
            when 3
                puts = "#{user.days_off(3)}"
                # user_hash[:days_off] = user.days_off(3)
            when 4
                puts = "#{user.days_off(4)}"
                # user_hash[:days_off] = user.days_off(4)
            when 5
                puts = "#{user.days_off(5)}"
                # user_hash[:days_off] = user.days_off(5)
            when 6
                puts = "#{user.days_off(6)}"
                # user_hash[:days_off] = user.days_off(6)
            when 7
                puts = "#{user.days_off(7)}"
                # user_hash[:days_off] = user.days_off(7)
            end
            adding = true
        end

        while adding == true
            puts " "
            puts "What time of the day best suits your workouts?"
            puts " "
            case time_pref
            when 1
                puts = "#{user.time_pref(1)}"
                # user_hash[:time_pref] = user.time_pref(1)
            when 2
                puts = "#{user.time_pref(2)}"
                # user_hash[:time_pref] = user.time_pref(2)
            when 3
                puts = "#{user.time_pref(3)}"
                # user_hash[:time_pref] = user.time_pref(3)
            end
            adding = false
            
        end
            puts user_hash
            intermittent
        when 2 # To display user account details
            # user_hash.each do |key, value| 
            #     puts "#{key} #{value}"
            # end
            puts user_hash
            intermittent
        when 5
            quit_program
        end
end

end

