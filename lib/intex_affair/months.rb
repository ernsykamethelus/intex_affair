require 'pry'

   class IntexAffair::Month

  attr_accessor :name, :months, :scraping_months
   @@all = []
 
  def initialize
    @name = name
    self.months
    @@all << self 
    scraping_months
  end
end

def name=(month_name)
  @months = month_name
end

def self.months(months)
  @months
end

  def self.all
    @@all
  end

def scraping_months
  @months = IntexAffair::Scraper.scraped_months
end
  
  # def get_months
  #   @months = IntexAffair::Scraper.self.scraped_months(months)
  #   # @@all
  #    end
  

  def get_events
    IntexAffair::Scraper.scraped_events(self) if @events.empty?
  end
   
#   def save
#     @@all << self
#   end
# end