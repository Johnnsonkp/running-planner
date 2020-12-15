class User
    attr_reader :name, :goal
    def initialize(name, goal)
        @name = name
        @user_info = Hash.new
        @goal = goal
        # @experience = experience
        # @days_off = days_off
        # @time_pref = time_pref
    end

    def user_name(name_str)
        @name = name_str.to_s
        @user_info[:name] = @name

        @user_info.each do |key, value| 
            return "#{value}"
        end
    end

    # def user_goal(goal_str)
    #     @goal = goal_str.to_s
    #     @user_info[:goal] = @goal

    #     @user_info.each do |key, value| 
    #         return "#{key[:goal]}"
    #     end

    # end

    def goal_input
        puts "Press 1) Weight loss" 
        puts "Press 2) Getting toned"
        puts "Press 3) Performance gains"
    
        input = gets.chomp.to_i
        if(input == 1)
            input = "Weight loss"
        elsif(input == 2)
            input = "Getting toned"
        elsif(input == 3)
            input = "Performance gains"
        else
            puts "invalid input"
        end

        @goal = input
        @user_info[:goal] = @goal
        
        @user_info.each do |key, value|
            return "#{[:goal][value]}"
        end


    end


end

