def ViewProject(person)
    if Programmer.find_by(name: person.name)
        #  && Project.find_by(programmer_id: object.id) == true
        puts "Found it. Your current projects are:"
        coder_projects = Project.all.select { |project| project.programmer_id == person.id}
        coder_projects.each do |project|
            puts "#{project.project_name}"
        end
    elsif Client.find_by(name: person.name) 
        #&& Client.find_by(client_id: object.id)
        my_projects = Project.all.select { |project| project.client_id == person.id }
        puts "Found it. Your current projects are:"
        my_projects.each do |project|
            puts "#{project.project_name}"
        end
    else
        system("clear")
        puts "name not found"
    end
end

def DeleteProject(person)
    prompt = TTY::Prompt.new
    if Programmer.find_by(name: person.name)
        #  && Project.find_by(programmer_id: object.id) == true
        coder_projects = Project.all.select { |project| project.programmer_id == person.id}
        # binding.pry
        project_select = prompt.select('Select a project') { |menu|
            coder_projects.each do |ar| 
              menu.choice "#{ar.project_name}",ar
        #       binding.pry
            end
            menu.choice 'exit', -> { Login_Programmer(person.name) }
        }
        if(prompt.yes?("Are sure you want to delete #{project_select.project_name}"))
            project_select.destroy
        end
    elsif Client.find_by(name: person.name)
        #&& Client.find_by(client_id: object.id)
        my_projects = Project.all.select { |project| project.client_id == person.id }
        project_select = prompt.select('Select a project') { |menu|
            my_projects.each do |ar| 
              menu.choice "#{ar.project_name}",ar
        #       binding.pry
            end
            menu.choice 'exit', -> { Login_Client(vegeta.name) }
        }
        if(prompt.yes?("Are sure you want to delete #{project2_updt.project_name}?"))
            project2_updt.destroy
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

def UpdateProNm(person)
    prompt = TTY::Prompt.new
     if Programmer.find_by(name: person.name)
        puts "Found it. Your current projects are:"
        current_projects = Project.all.select { |project| project.programmer_id == object.id}
        project2_updt = prompt.select('Select a project to update:') { |menu|
            current_projects.each do |ar| 
              menu.choice "#{ar.project_name}",ar
            end
            menu.choice 'exit', -> { Login_Programmer(person.name) }
        }
        nw_project_name = prompt.ask('What the new name for your project')
        if(prompt.yes?("Are sure you want to change the name from #{project2_updt.project_name} to #{nw_project_name}"))
            project2_updt.project_name = nw_project_name
            project2_updt.save
        end
     elsif Client.find_by(name: person.name)
        #&& Client.find_by(client_id: object.id)
        my_projects = Project.all.select { |project| project.client_id == person.id }
        project2_updt = prompt.select('Select a project') { |menu|
            my_projects.each do |ar| 
              menu.choice "#{ar.project_name}",ar
            end
            menu.choice 'exit', -> { Login_Client(person.name) }
        }
        nw_project_name = prompt.ask('What the new name for your project')
        if(prompt.yes?("Are sure you want to change the name from #{project2_updt.project_name} to #{nw_project_name}"))
            project2_updt.project_name = nw_project_name
            project2_updt.save
        end
     else
        system("clear")
        puts "name not found"
    end
end

def ViewAllProjects(person)
    prompt = TTY::Prompt.new
    selected_project = prompt.select('Here are all the projects:') { |menu|
        Project.all.each do |sing_project|
            menu.choice "#{sing_project.project_name}",sing_project      
        end
    }
    if (prompt.yes?('Do you want join this project?'))
        selected_project.programmer_id = person.id
        selected_project.save
    end
end