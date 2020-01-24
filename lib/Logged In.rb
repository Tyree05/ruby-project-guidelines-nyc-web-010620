def ViewProject(object)
    if Programmer.find_by(name: object.name)
        #  && Project.find_by(programmer_id: object.id) == true
        puts "Found it. Your current projects are:"
        t = Project.all.select { |project| project.programmer_id == object.id}
        t.each do |project|
            puts "#{project.project_name}"
        end
    elsif Client.find_by(name: object.name) 
        #&& Client.find_by(client_id: object.id)
        c = Project.all.select { |project| project.client_id == object.id }
        puts "Found it. Your current projects are:"
        c.each do |project|
            puts "#{project.project_name}"
        end
    else
        system("clear")
        puts "name not found"
    end
end

def DeleteProject(object)
    prompt = TTY::Prompt.new
    if Programmer.find_by(name: object.name)
        goku = Programmer.find_by(name: object.name)
        #  && Project.find_by(programmer_id: object.id) == true
        puts "Found it. Your current projects are:"
        t = Project.all.select { |project| project.programmer_id == goku.id}
        # binding.pry
        f = prompt.select('Select a project') { |menu|
            t.each do |ar| 
              menu.choice "#{ar.project_name}",ar
        #       binding.pry
            end
            menu.choice 'exit', -> { Login_Programmer(goku.name) }
        }
        if(prompt.yes?("Are sure you want to delete #{f.project_name}"))
            f.destroy
        end
    elsif Client.find_by(name: object.name) 
        vegeta = Client.find_by(name: object.name)
        #&& Client.find_by(client_id: object.id)
        c = Project.all.select { |project| project.client_id == vegeta.id }
        puts "Found it. Your current projects are:"
        f2 = prompt.select('Select a project') { |menu|
            c.each do |ar| 
              menu.choice "#{ar.project_name}",ar
        #       binding.pry
            end
            menu.choice 'exit', -> { Login_Client(vegeta.name) }
        }
        if(prompt.yes?("Are sure you want to delete #{f2.project_name}"))
            f2.destroy
        end
    else
        system("clear")
        puts "name not found"
    end
    # prompt = TTY::Prompt.new
    # f = prompt.select('Select a programmer?') { |menu|
    #     object.each do |ar| 
    #       menu.choice '#{ar.project_name}',ar
    #     end
    # }

end

def UpdateProNm(object)
    prompt = TTY::Prompt.new
    if Programmer.find_by(name: object.name)
        goku = Programmer.find_by(name: object.name)
        puts "Found it. Your current projects are:"
        t = Project.all.select { |project| project.programmer_id == goku.id}
        # binding.pry
        f = prompt.select('Select a project') { |menu|
            t.each do |ar| 
              menu.choice "#{ar.project_name}",ar
        #       binding.pry
            end
            menu.choice 'exit', -> { Login_Programmer(goku.name) }
        }
        chaotzu = prompt.ask('What the new name for your project')
        if(prompt.yes?("Are sure you want to change the name from #{f.project_name} to #{chaotzu}"))
            f.project_name = tien
         end
    elsif Client.find_by(name: object.name) 
        vegeta = Client.find_by(name: object.name)
        #&& Client.find_by(client_id: object.id)
        c = Project.all.select { |project| project.client_id == vegeta.id }
        puts "Found it. Your current projects are:"
        f2 = prompt.select('Select a project') { |menu|
            c.each do |ar| 
              menu.choice "#{ar.project_name}",ar
        #       binding.pry
            end
            menu.choice 'exit', -> { Login_Client(vegeta.name) }
        }
        tien = prompt.ask('What the new name for your project')
        if(prompt.yes?("Are sure you want to change the name from #{f2.project_name} to #{tien}"))
            f2.project_name = tien
            f2.save
        end
    else
        system("clear")
        puts "name not found"
    end
end