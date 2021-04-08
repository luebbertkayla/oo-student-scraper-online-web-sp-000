require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
  attr_accessor :student
  
  @@all = []
  
  def self.scrape_index_page(index_url)
    html = open(index_url)
    page = Nokogiri::HTML(html)
    
    students = []
    
    page.css("div.student-card").each do |student|
      students << {
        :name => student.css("h4.student-name").text,
        :location => student.css("p.student-location").text,
        :profile_url => student.children[1].attributes["href"].value
      }
     end
     students
  end 

  def self.scrape_profile_page(profile_url)
    page = Nokogiri::HTML(open(profile_url))
    
    student_page = {}
    
    page.css("social-icon-container")
  end

end

