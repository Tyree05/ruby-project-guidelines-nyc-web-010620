
def ProgrammerChoice
    prompt = TTY::Prompt.new
    if (prompt.ask('Create a username:') == "exit!")
        return prompt_user
    else
    Programmer.create(name: prompt.ask('Create a username:'))
    end
    system("clear")
    puts "Creation successful"
    puts "(press enter to return to main screen)"
    gets.chomp
    prompt_user
end

def SignUp_choice
    prompt = TTY::Prompt.new
    prompt.select('Who are you?') do |menu|
        menu.choice 'Programmer', -> { ProgrammerChoice() }
        menu.choice 'Client', -> { ClientChoice() }
    
    end
  end

  def ClientChoice
    prompt = TTY::Prompt.new
   if (prompt.ask('Create a username:') == "exit!")
    return prompt_user
   else
    Client.create(name: prompt.ask('Create a username:'))
   end
    system("clear")
    puts "Creation successful"
    puts "(press enter to return to main screen)"
    gets.chomp
    prompt_user
end
