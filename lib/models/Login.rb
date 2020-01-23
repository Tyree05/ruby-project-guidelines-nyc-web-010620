def LoginChoice
    prompt = TTY::Prompt.new
    l = prompt.ask('Please enter Username')
    if Programmer.find_by(name: l)
        system("clear")
        puts "name found!"
    else
        system("clear")
        puts "name not found"
        LoginChoice()
    end
end