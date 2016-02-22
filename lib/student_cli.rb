class StudentCLI

  def initialize
    @scraper = StudentScraper.new("http://students.learn.co/")
    @students = @scraper.students
  end


  def call
    puts "Hello, Welcome to the most awesome ruby class ever" 
    
    command = nil
    while command != "exit"
      puts "--------------------------"
      puts "What would you like to do?"
      command = gets.strip
      
      
      if command == "list"
        list
      elsif command.start_with?("show")
        show(command.gsub("show ", ""))
      end

    end
  end

  def list
    @students.each_with_index {|student, i| puts "#{i+1}. #{student.name}"}
  end

  def show(name)
    namec = name.split.map(&:capitalize)*' '
    student = @students.find {|student| student.name == namec}

    if student.nil?
      puts "*****************************"
      puts "STUDENT NOT FOUND IN DATABASE"
      puts "*****************************"
    else
      puts "--------------------------"
      puts "Name: #{student.name}"
      puts "Location: #{student.location}"
      puts "Website: #{student.href}"
    end
  end

end