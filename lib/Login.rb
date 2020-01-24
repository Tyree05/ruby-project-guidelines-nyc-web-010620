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
    l = prompt.ask('Please enter Username')
    if Programmer.find_by(name: l)
        system("clear")
        Login_Programmer(l)
    else
        puts "Name not found"
        Programmer_Loginscreen()
    end
end

def Client_Loginscreen
    prompt = TTY::Prompt.new
    l = prompt.ask('Please enter Username')
    if Client.find_by(name: l)
       system("clear")
       Login_Client(l)
    else
        puts "Name not found"
        Client_Loginscreen()
    end
end

#////////////////////////////////////////Logged In/////////////////////////////////////////////////////////////////

def Login_Client(inpu)
    var = Client.find_by(name: inpu)
    system("clear")
    puts "Welcome #{var.name}"
    prompt = TTY::Prompt.new
    prompt.select('What would you like to do today?') do |menu|
        menu.choice 'Delete project', -> {DeleteProject(var) }
        menu.choice 'Create project', -> {CreateProject}
        menu.choice 'View projects', -> {ViewProject(var)}
        menu.choice 'Update Project Name', -> {UpdateProNm(var)}
        menu.choice 'Exit', -> {system("clear")}
      
    end

  
end


def Login_Programmer(input)
    var = Programmer.find_by(name: input)
    system("clear")
    puts "Welcome #{var.name}"
    prompt = TTY::Prompt.new
    prompt.select('What would you like to do today?') do |menu|
        menu.choice 'Delete project', -> { DeleteProject(var) }
        menu.choice 'View projects', -> { ViewProject(var) }
        menu.choice 'Exit', -> {system("clear")}
      
    end

  
end