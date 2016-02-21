require_relative '../config/environment'

class StudentScraper

  def initialize(url)
    @url = url
  end

  def students

    index_doc = Nokogiri::HTML(open(@url))
    student_links = index_doc.css("div.card-text-container h4.student-name")
    
    student_links.collect {|s| Student.new(s.text)}
  end


end

