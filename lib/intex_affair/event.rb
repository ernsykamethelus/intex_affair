require 'pry'
 class IntexAffair::Event
    attr_accessor :ge_events
    @@all = []
    
    def initialize
      @@all << self
    end
  end
    
    def self.all
        @@all
    end

    def self.find_event(event_name)
      self.all.find {|event|event.name == event_name}
    end 

    def get_events
        @events = IntexAffair::Scraper.scraped_events(self)
      end


 
  
