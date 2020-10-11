class IntexAffair::Month 
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    save
  end
  
  def self.all 
    IntexAffair::Scraper.scraped_months if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end