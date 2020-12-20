# require_relative "user"
require 'day_planner'
require 'weekly_planner'
require 'terminal-table'
require "tty-prompt"
require_relative "user"


user = User.new("test","test", "test", "test", "test", "test", "test", "test")
user_hash = user.display_user_info
prompt = TTY::Prompt.new

def white_space
    puts " "
end

def welcome_greeting
    system "clear"
    puts " "
    puts "####################################"
    puts "Welcome to terminal runner"
    puts "####################################"
end


def menu_input_select
    puts " "
    prompt = TTY::Prompt.new
    choices = [
        {name: 'Create a new account', value: 1},
        {name: 'Display user account details', value: 2},
        {name: 'Display running schedule', value: 3},
        {name: 'Update schedule', value: 4},
        {name: 'Quit', value: 5}

    ]
    
    user_input = prompt.select("What would you like to do?", choices)
end

def goal_question
    puts " "
    prompt = TTY::Prompt.new

    goal_hash = [
        {name: 'Weight loss ', value: 1},
        {name: 'Getting toned', value: 2},
        {name: 'Performance gains', value: 3}
    ]
    
    user_input = prompt.select("What is your goal?", goal_hash)
    # input = gets.chomp.to_i
end

def experience_input
    puts " "
    prompt = TTY::Prompt.new
    experience_hash = [
        {name: 'Beginner', value: 1},
        {name: 'Intermediate', value: 2},
        {name: 'Advance', value: 3}
    ]
    user_input = prompt.select("What is your running experience?", experience_hash)
end

def days_off
    puts " "
    prompt = TTY::Prompt.new
    days_off_hash = [
        {name: 'Monday', value: 1},
        {name: 'Tuesday', value: 2},
        {name: 'Wednesday', value: 3},
        {name: 'Thursday', value: 4},
        {name: 'Friday', value: 5},
        {name: 'Saturday', value: 6},
        {name: 'Sunday', value: 7}
    ]
    user_input = prompt.select("Are there any days you're unable to workout?", days_off_hash)
end

def time_pref
    puts " "
    prompt = TTY::Prompt.new

    time_pref_hash = [
        {name: 'Morning', value: 1},
        {name: 'Afternoon', value: 2},
        {name: 'Evenings', value: 3}
    ]
    user_input = prompt.select("What time of the day best suits your workouts?", time_pref_hash)

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

def user_info_title
    system "clear"
    puts "##########################"
    puts " "
    puts "User Information"
    puts " "
    puts "##########################"
    puts " "
end

def running_schedule
    system "clear"
    puts "##########################"
    puts "Running Schedule"
    puts "##########################"
    puts " "
end

def daily_schedule
    puts " "
    prompt = TTY::Prompt.new
    days_off_hash = [
        {name: 'Monday', value: 1},
        {name: 'Tuesday', value: 2},
        {name: 'Wednesday', value: 3},
        {name: 'Thursday', value: 4},
        {name: 'Friday', value: 5},
        {name: 'Saturday', value: 6},
        {name: 'Sunday', value: 7}
    ]
    user_input = prompt.select("What does your daily schedule look like", days_off_hash)
end

def weight_loss_beginner_hash
    beginner_schedule_hash = {
        :Monday    => " // Walk for 10 minutes (warm-up) // " " // Run for 1 minute, walk for 2 minutes (30 minutes) // " " // Cool down walk //",
        :Tuesday   => " Rest",
        :Wednesday => " // Walk for 10 minutes (warm-up) // " " // Run during chorus and walk during verse (30 minutes) // " " // Cool down walk // ",
        :Thursday  => " Rest",
        :Friday    => "// Walk for 10 minutes (warm-up) // " " // Light intensity run for 10 minutes // " " // Cool down walk (5 minutes) //",
        :Saturday  => " Rest",
        :Sunday    => " Rest"
    }
end

def toned_intermediate_hash
    intermediate_hash = {
        :Monday    => " Rest   ",
        :Tuesday   => " // Walk for 10 minutes (warm-up) // " " // Easy run for 20 to 25 minutes (4 - 5km) // " " // Cool down walk (5 minutes) // ",
        :Wednesday => " Rest ",
        :Thursday  => " // Walk for 10 minutes (warm-up) // " " // 10 minute easy run // 1 minute fast w/ 2 min recovery (repeat 4 times) // " " // Cool down walk (5 minutes) //",
        :Friday    => " Rest ",
        :Saturday  => " // Walk for 10 minutes (warm-up) // " " // Easy run for 20 to 25 minutes (4 - 5km) // " " // Cool down walk (5 minutes) //",
        :Sunday    => " // Walk for 10 minutes (warm-up) // " " // Easy run for 20 to 25 minutes (4 - 5km) // " " // Cool down walk (5 minutes) //"
    }
end

def performance_gain_advance
    advance_schedule_hash = {
        :Monday    => " // Walk for 10 minutes (warm-up) // " " // 5km Run // " " // Cool down walk (5 minutes) //   ",
        :Tuesday   => " // Walk for 10 minutes (warm-up) // " " // 5 x 400 interval // " " // Cool down walk (5 minutes) // ",
        :Wednesday => " // Walk for 10 minutes (warm-up) // " " // Easy 4km Run // " " // Cool down walk (5 minutes) ",
        :Thursday  => " // Walk for 10 minutes (warm-up) // " " // 30 minute tempo run // " " // Cool down walk (5 minutes) //",
        :Friday    => " Rest ",
        :Saturday  => " // Walk for 10 minutes (warm-up) // " " // 6.4 km fast run // " " // Cool down walk (5 minutes) //",
        :Sunday    => " // Walk for 10 minutes (warm-up) // " " // 60 minute run // " " // Cool down walk (5 minutes) //"
    }

end




def print_schedule(arr1, arr2)
    user = User.new("test","test", "test", "test", "test", "test", "test", "test")
    user_hash = user.display_user_info


    arr1.each do |key, value |
        #Creates running schedule based around users available days
        if(daily_schedule!= key.to_s)
            rows = []
            rows << ["#{value}"]
            table = Terminal::Table.new :headings => ["#{key}", arr2], :rows => rows
            table.align_column(1, :center)
            table.style = {:width => 150, :padding_left => 3, :border_x => "=", :border_i => "x"}
            puts " "
            puts table
            # print_schedule
        end
    end
end