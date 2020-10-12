class IntexAffair::Month 
  attr_accessor :name, :events
  @@all = []
 
  
  def initialize(name)
    @name = name 
    @events = []
    save
  end

  
  def self.all
    @@all
  end
   
   def scraped_months
    IntexAffair::Scraper.self.scraped_months if @@months.empty?
   end

  def get_events
    IntexAffair::Scraper.scraped_events(self) if @events.empty?
  end
   
  def save
    @@all << self
  end
end