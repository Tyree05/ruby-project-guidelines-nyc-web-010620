def LoginChoice
    prompt = TTY::Prompt.new
    prompt.select('Who are you?') do |menu|
        menu.choice 'Programmer', -> { Programmer_Loginscreen() }
        menu.choice 'Client', -> { Client_Loginscreen() }
    
    end
end
#////////////////////////////////////////Loginscreen/////////////////////////////////////////////////////////////////
def Programmer_Loginscreen
    prompt = TTY::Prompt.new
    username = prompt.ask('Please enter Username')
    if Programmer.find_by(name: username)
        system("clear")
        Login_Programmer(username)
    else
        puts "Name not found"
        Programmer_Loginscreen()
    end
end

def Client_Loginscreen
    prompt = TTY::Prompt.new
    username = prompt.ask('Please enter Username')
    if Client.find_by(name: username)
       system("clear")
       Login_Client(username)
    else
        puts "Name not found"
        Client_Loginscreen()
    end
end

#////////////////////////////////////////Logged In/////////////////////////////////////////////////////////////////

def Login_Client(name)
    current_client = Client.find_by(name: name)
    system("clear")
    puts "Welcome #{current_client.name}"
    prompt = TTY::Prompt.new
    prompt.select('What would you like to do today?') do |menu|
        menu.choice 'Delete project', -> {DeleteProject(current_client) }
        menu.choice 'Create project', -> {CreateProject}
        menu.choice 'My projects', -> {ViewProject(current_client)}
        menu.choice 'Update Project Name', -> {UpdateProNm(current_client)}
        menu.choice 'Exit', -> {system("clear")}
      
    end

  
end


def Login_Programmer(name)
    current_programmer = Programmer.find_by(name: name)
    system("clear")
    puts "Welcome #{current_programmer.name}"
    prompt = TTY::Prompt.new
    prompt.select('What would you like to do today?') do |menu|
        menu.choice 'Delete project', -> { DeleteProject(current_programmer) }
        menu.choice 'View current projects', -> { ViewProject(current_programmer) }
        menu.choice 'View all Projects', -> {ViewAllProjects(current_programmer)}
        menu.choice 'Exit', -> {system("clear")}
      
    end

  
end