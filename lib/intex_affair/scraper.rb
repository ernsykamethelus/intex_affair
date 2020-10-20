# require 'Nokogiri'
# require 'HTTParty'

class IntexAffair::Scraper
  
    attr_accessor :name, :url, :scraped_months, :scraped_events

  def initialize(name)
   @name = name
  end

def self.scraped_months
  page = Nokogiri::HTML(open("https://www.wmoda.com/visit-2/"))
months = page.css("select#archives-dropdown-2 option")

months.each do |m|
  puts m.text
  IntexAffair::Month.new(name)
end
  end
end 

def self.scraped_events(month)
  url = "https://www.wmoda.com/visit-2/"
      doc = Nokogiri::HTML(open(url))
      
      list = doc.css("div#recent-posts-2 li")
       list.each do |li|
        info = li.text.strip
       end
      end