require_relative '../config/environment'
# binding.pry

system("clear")


def prompt_user
  system("clear")
  puts "Welcome to PDC! Your go too spot for project building. What would you like to do?"
  puts "Login"
  puts "Sign Up"

  user_input = gets.chomp.to_i
#   action_router(user_input)
end


# prompt.select('What book do you want to see?') do |menu|
#     data["items"].each do |book|
#       menu.choice book["volumeInfo"]["title"], -> do 
  
#         puts "Here's all the info about '#{book["volumeInfo"]["title"]}'"
#         puts book["volumeInfo"]["description"]
  
#         # system("say '#{book["volumeInfo"]["title"]}'")
  
#         # Book.create(
#         #   title: book["volumeInfo"]["title"],
#         #   description: book["volumeInfo"]["description"]
#         # )
#       end
#     end
#   end

# def action_router(input)
#   case input
#   when 1
# def make_dragon
#   puts "What is thy dragon's name?"
#   name = gets.chomp

#   puts "What color is thy dragon?"
#   color = gets.chomp

#   puts "How big is thy dragon?"
#   size = gets.chomp.to_i

#   puts "How many knights has thy dragon slain?"
#   knights_slain = gets.chomp.to_i

#   dragon = Dragon.new(name: name, color: color, size: size, knights_slain: knights_slain)
#   dragon.save

#   puts "Thy dragon is bourne!"
# end

# def print_dragons
#   Dragon.all.each do |dragon|
#     puts " ---------------  "
#     puts "Name: #{dragon.name}"
#     puts "Color: #{dragon.color}"
#     puts "Size: #{dragon.size}"
#     puts "Knights Slain: #{dragon.knights_slain}"
#     puts " ---------------  "
#   end
# end

# def find_dragon
#   puts "What is thy dragon's id?"

#   id = gets.chomp.to_i

#   dragon = Dragon.find(id)

#   puts " ---------------  "
#   puts "Name: #{dragon.name}"
#   puts "Color: #{dragon.color}"
#   puts "Size: #{dragon.size}"
#   puts "Knights Slain: #{dragon.knights_slain}"
#   puts " ---------------  "
# end


# puts "🐉 Rawr! Welcome to Dragon World! 🐉"
# puts "(press any key to continue)"
# gets.chomp
# prompt_user