
def ProgrammerChoice
    prompt = TTY::Prompt.new
<<<<<<< HEAD
    prompt.ask('Create a username:')
    d => gets.chomp
    Programmer.create(name: d)
=======
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
>>>>>>> 2a3ff3dd320f6d5089c064092df29ac4dac3ee63
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
