require_relative '../config/environment'

class StudentScraper

  def initialize(url)
    @url = url
  end

  def students

    index_doc = Nokogiri::HTML(open(@url))
    student_links = index_doc.css("div.student-card")

    student_links.collect do |student| 
      s = Student.new(student.css("h4.student-name").text)
      s.href = "#{@url}#{student.css("a").attr("href").value}"
      s.location = student.css("p.student-location").text
      s
    end

  end


end


