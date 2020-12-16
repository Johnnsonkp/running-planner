require_relative "user"

def welcome_greeting
    puts "##########################"
    puts "Welcome to terminal runner"
    puts "##########################"
end

def new_user
    # user = User.new("test","test", "test", "test", "test", "test", "test")

    # adding = true
    # while adding 
    #     system "clear"
    #     puts "What is your name?"
    #     puts " "
    #     name = gets.chomp
    #     if(name.length > 0)
    #         system "clear"
    #         puts "##########################"
    #         puts "Welcome #{user.user_name(name)}"
    #         puts "##########################"
    #         puts " "
    #         adding = false
    #     else
    #         puts "invalid name, try again"
    #     end   
    # end

    # while adding == false
    #     puts " "
    #     puts "Whats is your goal?"
    #     puts " "
    #     case goal_question
    #     when 1
    #         puts = "#{user.goal_input(1)}"
    #     when 2
    #         puts = "#{user.goal_input(2)}"

    #     when 3
    #         puts = "#{user.goal_input(3)}"
    #     end
    #     # rescue 
    #     #     puts "Invalid input, try again"
    #     # end
    #     adding = true 
    # end

    # while adding == true
    #     puts " "
    #     puts "What is your experience?"
    #     puts " "
    #     case experience_input
    #     when 1
    #         puts = "#{user.experience(1)}"
    #     when 2
    #         puts = "#{user.experience(2)}"
    #     when 3
    #         puts = "#{user.experience(3)}"
    #     end
    #     adding = false
    # end

    # while adding == false
    #     puts " "
    #     puts "Are there any days you're unable to workout?"
    #     puts " "
    #     case days_off
    #     when 1
    #         puts = "#{user.days_off(1)}"
    #     when 2
    #         puts = "#{user.days_off(2)}"
    #     when 3
    #         puts = "#{user.days_off(3)}"
    #     when 4
    #         puts = "#{user.days_off(4)}"
    #     when 5
    #         puts = "#{user.days_off(5)}"
    #     when 6
    #         puts = "#{user.days_off(6)}"
    #     when 7
    #         puts = "#{user.days_off(7)}"
    #     end
    #     adding = true
    # end

    # while adding == true
    #     puts " "
    #     puts "What time of the day best suits your workouts?"
    #     puts " "
    #     case time_pref
    #     when 1
    #         puts = "#{user.time_pref(1)}"
    #     when 2
    #         puts = "#{user.time_pref(2)}"
    #     when 3
    #         puts = "#{user.time_pref(3)}"
    #     end
    #     adding = false
    # end
end


def menu_input_select
    puts " "
    puts "Press 1) to Create a new account" 
    puts "Press 2) to display user account details"
    puts "Press 3) to display running schedule"
    puts "Press 4) to update schedule"
    puts "Press 5) to quit"
    input = gets.chomp.to_i
end

def goal_question
    puts " "
    puts "Press 1) Weight loss" 
    puts "Press 2) Getting toned"
    puts "Press 3) Performance gains"
    input = gets.chomp
end

def experience_input
    puts " "
    puts "Press 1) Beginner" 
    puts "Press 2) Intermediate"
    puts "Press 3) Advance"
    return input = gets.chomp.to_i
end

def days_off
    puts " "
    puts "Press 1) Monday" 
    puts "Press 2) Tuesday"
    puts "Press 3) Wednesday"
    puts "Press 4) Thursday" 
    puts "Press 5) Friday"
    puts "Press 6) Saturday"
    puts "Press 7) Sunday"

    input = gets.chomp.to_i

end

def time_pref
    puts " "
    puts "Press 1) Morning" 
    puts "Press 2) Afternoon"
    puts "Press 3) Evenings"
    input = gets.chomp.to_i

end

def quit_program
    puts "Are you sure you want to quit?"
    answer = gets.chomp
    if answer.downcase == 'yes'
        puts "Goodbye"
        exit
    end
end 

def intermittent
    puts "Press any key to continue"
    gets
    system "clear"
end

# def user_info
#     user.display_user_info(1)
# end