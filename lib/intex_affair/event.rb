require 'pry'
 class IntexAffair::Event
    attr_accessor :name, :events, :scraping_events
    @@all = []
    
    def initialize
      @name = name
      self.events
      @@all << self
      # add_month
      self.scraping_events
    end
  end

    def name=(event_name)
      @events = event_name
    end

    def self.events(events)
      @events
    end
    
    def self.all
        @@all
    end

    # def add_month
    #   @months.events << self unless @months.events.include?(self)
    # end

    def self.scraping_events
      @@all << scraping_events
      @events = IntexAffair::Scraper.scraped_events
    end

     def scraping_events
      self
      # @events = IntexAffair::Scraper.scraped_events
      # @@all
     end