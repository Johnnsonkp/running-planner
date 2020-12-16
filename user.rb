class User
    attr_reader :name, :goal, :experience, :days_off, :time_pref, :display_user_info
    def initialize(name, goal, experience, days_off, time_pref, display_user_info )
        @name = name
        # @new_hash = Hash.new
        @user_info = Hash.new
        @goal = goal
        @experience = experience
        @days_off = days_off
        @time_pref = time_pref
    end

    def user_name(name_str)
        @name = name_str.to_
        @user_info[:name] = @name

        @user_info.each do |key, value| 
            return "#{value}"
        end
    end

    def goal_input(input)
        # input = input.chomp.to_i
        if(input == 1)
            goal = "Weight loss"
        elsif(input == 2)
            goal = "Getting toned"
        elsif(input == 3)
            goal = "Performance gains"
        else
            puts "invalid input"
        end

        @goal = goal.to_s
        @user_info[:goal] = @goal
    
        value = "goal"
        puts "##########################"
        puts "Your goal is #{@user_info[value.to_sym]}"
        puts "##########################"

    end

    def experience(input)
        # input = input.chomp.to_i
        if(input == 1)
            exp = "Beginner"
        elsif(input == 2)
            exp = "Intermediate"
        elsif(input == 3)
            exp = "Advance"
        else
            puts "invalid input"
        end

        @experience = exp.to_s
        @user_info[:experience] = @experience
    
        value = "experience"
        puts "#################################"
        puts "Your experience level is #{@user_info[value.to_sym]}"
        puts "#################################"

    end

    def days_off(input)

        input = input.to_i
        if(input == 1)
            off = "Mondays"
        elsif(input == 2)
            off = "Tuesdays"
        elsif(input == 3)
            off = "Wednesdays"
        elsif(input == 4)
            off = "Thursdays"
        elsif(input == 5)
            off = "Fridays"
        elsif(input == 6)
            off = "Saturdays"
        elsif(input == 7)
            off = "Sundays"
        else
            puts "invalid input"
        end

        @days_off = off.to_s
        @user_info[:days_off] = @days_off
    
        value = "days_off"
        puts "#############################################"
        puts "You're unavailable to workout on #{@user_info[value.to_sym]}"
        puts "#############################################"

    end

    def time_pref(input)
    
        # input = input.to_i
        if(input == 1)
            pref = "Mornings"
        elsif(input == 2)
            pref = "Afternoon"
        elsif(input == 3)
            pref = "Evenings"
        else
            puts "invalid input"
        end

        @time_pref = pref.to_s
        @user_info[:time_pref] = @time_pref
    
        value = "time_pref"
        puts "#############################################"
        puts "Your preferred time to workout is in the #{@user_info[value.to_sym]}"
        puts "#############################################"

        puts @user_info

    end

    def display_user_info

        @user_info.each do |key, value| 
            return "#{key} #{value}"
        end
    end

end

