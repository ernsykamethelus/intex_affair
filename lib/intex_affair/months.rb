class IntexAffair::Month 
  attr_accessor :name, :months, :events
  @@all = []
 
  
  def initialize(name, months)
    @name = name 
    @months = []
    @events = []
    save
  end

  
  # def get_months
  #   IntexAffair::Scraper.scraped_months if @months.empty
  #   @@all
  # end
   

  def get_events
    IntexAffair::Scraper.scraped_events(self) if @events.empty?
  end
   
  def save
    @@all << self
  end
end