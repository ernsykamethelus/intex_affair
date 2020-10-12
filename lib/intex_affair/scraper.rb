class IntexAffair::Scraper
  # attr_accessor :name, :event, :url

  # def self.list_months
  #   self.scrape_months
  # end

  def self.scraped_months
    doc = Nokogiri::HTML(URI.open("https://www.wmoda.com/visit-2/"))
  
     months = doc.css("select#archives-dropdown-2")
    
    months.each do |m|
    name = m.text
    IntexAffair::Month.new(name)
end
  end

  def self.scraped_events(month)
    IntexAffair::Event.new("fun event", month)
    IntexAffair::Event.new("not fun event", month)
  end
end
