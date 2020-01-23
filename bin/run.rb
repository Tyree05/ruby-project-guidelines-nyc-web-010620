require 'tty-prompt'
require_relative '../config/environment'
# binding.pry
system("clear")
def prompt_user
  system("clear")
  # system("say 'If you have an account please sign in. If not, lets create one'")
  
  prompt = TTY::Prompt.new
  prompt.select('What would you like to do today?') do |menu|
      menu.choice 'Login', -> { Test() }
      menu.choice 'Sign Up', -> { SignUp_choice()}
    
  end

end

puts "Welcome to PDC! Your go too spot for project building."
# system("say 'Welcome to PDC! Your go 2 spot for project building.'")
puts "(press any key to continue)"
gets.chomp
prompt_user
