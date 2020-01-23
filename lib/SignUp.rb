
def ProgrammerChoice
    prompt = TTY::Prompt.new
    mt = prompt.ask('Create a username:')
    if (mt == "exit!")
        return prompt_user
    else

    Programmer.create(name: prompt.ask('Create a username:'))
    Programmer.create(name: mt)
    system("clear")
    puts "Creation successful"
    puts "(press enter to return to main screen)"
    gets.chomp
    prompt_user
    end
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
    y = prompt.ask('Create a username:')
    if (y == "exit!")
       return prompt_user
   else
    
    Client.create(name: y)
    system("clear")
    puts "Creation successful"
    puts "(press enter to return to main screen)"
    gets.chomp
    prompt_user
   end
end

