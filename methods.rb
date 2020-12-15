def welcome_greeting
    puts "##########################"
    puts "Welcome to terminal runner"
    puts "##########################"
end


def output_member_message(length) 
    if length == 1 
        puts "There is #{length} member in the group"
    elsif length == 0 
        puts "The group is empty"
    else 
        puts "There are #{length} members in the group"
    end 
end

def menu_input_select
    puts " "
    puts "Press 1) to Create a new account" 
    puts "Press 2) to display running schedule"
    puts "Press 3) to update schedule"
    puts "Press 4) to quit"
    input = gets.chomp.to_i
end

# def goal_input
#     puts "Press 1) Weight loss" 
#     puts "Press 2) Getting toned"
#     puts "Press 3) Performance gains"

#     input = gets.chomp.to_i
#     if(input == 1)
#         input = "Weight loss"
#     elsif(input == 2)
#         input = "Getting toned"
#     elsif(input == 3)
#         input = "Performance gains"
#     else
#         puts "invalid input"
#     end
#     return input
# end