class IntexAffair::Month 
  attr_accessor :name, :events
  @@all = []
 
  
  def initialize(name)
    @name = name 
    @events = []
    save
  end
  
  def self.all 
    IntexAffair::Scraper.scraped_months if @@all.empty?
    @@all
  end
   

  def get_events
    IntexAffair::Scraper.scraped_events(self) if @events.empty?
  end
   
  def save
    @@all << self
  end
end