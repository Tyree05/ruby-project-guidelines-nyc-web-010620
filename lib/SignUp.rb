  
def ProgrammerChoice
    prompt = TTY::Prompt.new
    prompt.ask('Create a username:')
    d = gets.chomp
    Programmer.create(name: d)
end


def SignUp_choice
    prompt = TTY::Prompt.new
    prompt.select('Who are you?') do |menu|
        menu.choice 'Programmer', -> { ProgrammerChoice() }
        menu.choice 'Client', -> { system("clear") }
    
    end
  end