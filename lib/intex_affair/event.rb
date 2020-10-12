class IntexAffair::Event
    attr_accessor :name, :month
    @@all = []
   
    
    def initialize(name, month)
      @name = name 
      @month = month
      add_to_month
      save
    end
    
    def self.all
        @@all
    end

     def add_to_month
        @month_events << self unless @month.events.include?(self)
     end


    def save
      @@all << self
    end
  end