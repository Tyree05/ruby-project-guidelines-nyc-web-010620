def LoginChoice
    # prompt = TTY::Prompt.new
    l = prompt.ask('Please enter Username')
    if l == "!!!" 
       prompt_user
    elsif l == "!!"
       system("clear")
    end

#     if Programmer.find_by(name: l)
#         system("clear")
#         Login_Programmer()
       

#     elsif Client.find_by(name: l)
#        system("clear")
#        Login_Client()

#     else
#         system("clear")
#         puts "name not found"
#         LoginChoice()
#     end
end


def Test
    prompt = TTY::Prompt.new
    prompt.select('Who are you?') do |menu|
        menu.choice 'Programmer', -> { ProTest() }
        menu.choice 'Client', -> { CleintTest() }
    
    end
  end

def ProTest
    prompt = TTY::Prompt.new
    l = prompt.ask('Please enter Username')
    if Programmer.find_by(name: l)
        system("clear")
        Login_Programmer()
    else
        puts "Name not found"
        ProTest()
    end
end

def CleintTest
    prompt = TTY::Prompt.new
    l = prompt.ask('Please enter Username')
    if Client.find_by(name: l)
       system("clear")
       Login_Client()
    else
        puts "Name not found"
        CleintTest()
    end
end



def Login_Client
    prompt = TTY::Prompt.new
    prompt.select('What would you like to do today?') do |menu|
        menu.choice 'Delete project', -> {Login_Client() }
        menu.choice 'Create project', -> {Login_Client()}
        menu.choice 'View projects', -> {Login_Client()}
        menu.choice 'Exit', -> {system("clear")}
      
    end

  
end


def Login_Programmer
    prompt = TTY::Prompt.new
    prompt.select('What would you like to do today?') do |menu|
        menu.choice 'Delete project', -> {Login_Programmer() }
        menu.choice 'View projects', -> {Login_Programmer()}
        menu.choice 'Exit', -> {system("clear")}
      
    end

  
end

def ViewProjects
    
end