
class IntexAffair::Scraper
  
  # attr_accessor :name, :event, :url

  # def self.list_months
  #   self.scrape_months
  # end

  def self.scraped_months
    doc = Nokogiri::HTML(URI.open("https://www.wmoda.com/visit-2/"))
  
     months = doc.css("select#archives-dropdown-2 option")
    
    months.each do |m|
    name = m.text
    IntexAffair::Month.new(name)
end
  end

   def self.scraped_events(month)
      doc = Nokogiri::HTML(open(url))
      
      event = doc.search("div.recent-posts-2 ul li").attr("h3")
       events.each do |e|
        name = m.text
        IntexAffair::Event.new(name)
       end
    end
