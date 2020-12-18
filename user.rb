class User
    require 'terminal-table'

    attr_reader :name, :goal, :experience, :days_off, :time_pref, :display_user_info, :print_pref_time, :weight_loss_beginner

    def initialize(name, goal, experience, days_off, time_pref, display_user_info, print_pref_time, weight_loss_beginner)
        @name = name
        @user_info = Hash.new
        @goal = goal
        @experience = experience
        @days_off = days_off
        @time_pref = time_pref
        @weight_loss_beginner = weight_loss_beginner
        # @user_schedule = self.path_to_schedule || []
        # @file_path = file_path
    end

    # def weight_loss_beginner
    #     # require 'terminal-table'

    #     beginner_schedule_hash = {
    #         :Monday    => " // Walk for 10 minutes (warm-up) // " " // Run for 1 minute, walk for 2 minutes (30 minutes) // " " // Cool down walk //",
    #         :Tuesday   => " Rest",
    #         :Wednesday => " // Walk for 10 minutes (warm-up) // " " // Run during chorus and walk during verse (30 minutes) // " " // Cool down walk // ",
    #         :Thursday  => " Rest",
    #         :Friday    => "// Walk for 10 minutes (warm-up) // " " // Light intensity run for 10 minutes // " " // Cool down walk (5 minutes) //",
    #         :Saturday  => " Rest",
    #         :Sunday    => " Rest"
    #     }
    #     # beginner_schedule_hash.each do |key, value |
    #     #     #Creates running schedule based around users available days
    #     #     if(display_user_info[:days_off]!= key.to_s)
    #     #         rows = []
    #     #         rows << ["#{value}"]
    #     #         table = Terminal::Table.new :headings => ["#{key}"], :rows => rows
    #     #         table.align_column(1, :center)
    #     #         table.style = {:width => 180, :padding_left => 3, :border_x => "=", :border_i => "x"}
    #     #         puts " "
    #     #         return table
    #     #     display = false   
    #     #     end
    #     # end
    #     # intermittent
    # end


    def user_name(name_str)
        @name = name_str.to_s
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
        system "clear"
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
        system "clear"
        puts "#################################"
        puts "Your experience level is #{@user_info[value.to_sym]}"
        puts "#################################"

    end

    def days_off(input)

        input = input.to_i
        if(input == 1)
            off = "Monday"
        elsif(input == 2)
            off = "Tuesday"
        elsif(input == 3)
            off = "Wednesday"
        elsif(input == 4)
            off = "Thursday"
        elsif(input == 5)
            off = "Friday"
        elsif(input == 6)
            off = "Saturday"
        elsif(input == 7)
            off = "Sunday"
        else
            puts "invalid input"
        end

        @days_off = off.to_s
        @user_info[:days_off] = @days_off
    
        value = "days_off"
        system "clear"
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
        system "clear"
        puts "#############################################"
        puts "Your preferred time to workout is in the #{@user_info[value.to_sym]}"
        puts "#############################################"

        def display_user_info
            @user_info.each do |key, value| 
                puts "#{key} #{value}"
            end
        end

    end

    def display_user_info

        @user_info.each do |key, value| 
            puts "#{key} #{value}"
        end
    end

end

