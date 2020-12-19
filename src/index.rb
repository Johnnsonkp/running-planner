require_relative "methods"
require_relative "user"
require 'terminal-table'
require 'colorize'
require 'tty-prompt'
require 'tty-table'
# require_relative 'schedule'

prompt = TTY::Prompt.new


#Handle command line arguments

#Assigning the user
user = User.new("test","test", "test", "test", "test", "test", "test", "test")
user_hash = user.display_user_info




begin

while true 
    welcome_greeting
    # case menu_input_select
    case menu_input_select
    when 1 # To create a new user
        adding = true
        while adding 
            system "clear"
            puts "What is your name?"
            white_space
            name = gets.chomp
            # user_hash[:name] = name
            if(name.length > 0)
                system "clear"
                puts "##########################"
                puts "Welcome #{user.user_name(name)}"
                puts "##########################"
                white_space
                adding = false
            else
                puts "invalid name, try again"
            end   
        end

        while adding == false
            white_space
            case goal_question
            when 1 
                puts = "#{user.goal_input(1)}"
            when 2
                puts = "#{user.goal_input(2)}"
            when 3
                puts = "#{user.goal_input(3)}"
            end
            adding = true 
        end

        while adding == true
            white_space
            case experience_input
            when 1
                puts = "#{user.experience(1)}"
            when 2
                puts = "#{user.experience(2)}"
            when 3
                puts = "#{user.experience(3)}"
            end
            adding = false
        end

        while adding == false
            white_space
            case days_off
            when 1
                puts = "#{user.days_off(1)}"
            when 2
                puts = "#{user.days_off(2)}"
            when 3
                puts = "#{user.days_off(3)}"
            when 4
                puts = "#{user.days_off(4)}"
            when 5
                puts = "#{user.days_off(5)}"
            when 6
                puts = "#{user.days_off(6)}"
            when 7
                puts = "#{user.days_off(7)}"
            end
            adding = true
        end

        while adding == true
            white_space
            case time_pref
            when 1
                puts = "#{user.time_pref(1)}"
            when 2
                puts = "#{user.time_pref(2)}"
            when 3
                puts = "#{user.time_pref(3)}"
            end
            adding = false
        end
            intermittent
    when 2 # To display user account details
            user_info_title 
            user_hash.each do |key, value| 
                rows = []
                rows << ["#{key}", "#{value}" ]
                table = Terminal::Table.new :rows => rows
                table.style = {:width => 100, :padding_left => 3, :border_x => "=", :border_i => "x"}
                puts table
            end
            # puts new_table
            intermittent

        
    when 3 # To display weekly running schedule
        running_schedule
        #For beginner users
        if(user_hash[:experience] == "Beginner")
            if(user_hash[:goal] == "Weight loss")
                print_schedule(weight_loss_beginner_hash, user_hash[:time_pref])
            end
        elsif(user_hash[:experience] == "Intermediate")
            if(user_hash[:goal] == "Getting toned")
                print_schedule(toned_intermediate_hash, user_hash[:time_pref])
            end
        elsif(user_hash[:experience] == "Advance")
            if(user_hash[:goal] == "Performance gains")
                print_schedule(performance_gain_advance, user_hash[:time_pref])
            end
        end 
        intermittent
    when 4
        quit_program
    when 5 # Quits application
        quit_program
    end
end
end


