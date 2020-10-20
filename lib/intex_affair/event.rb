class IntexAffair::Event
    attr_accessor :name, :month, :url
    @@all = []
   
    
    def initialize(name, month)
      @name = name 
      @month = month
      @url = url
      addup_month
      save
    end
    
    def self.all
        @@all
    end

     def addup_month
        @month_events << self unless @month.events.include?(self)
     end

    def save
      @@all << self
    end
  end