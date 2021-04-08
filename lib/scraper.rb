require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    
    students = []
    
    doc.css("div.student-card").each do |student|
      students << {
        :name => student.css("h4.student-name")
        :location => student.css()
        :profile_url
      }
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

