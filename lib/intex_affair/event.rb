class IntexAffair::Event
    attr_accessor :title, :events, :scraping_events
    @@all = []
   
    
    def initialize
      @title = title 
      self.events
      @@all << self
      scraping_events
      save
    end

    def title=(event_title)
      @events = event_title
    end

    def self.events(events)
      @events
    end
    
    def self.all
        @@all
    end

     def scraping_events
      @events = IntexAffair::Scraper.scraped_events
        @month.events << self unless @month.events.include?(self)
     end
    end
