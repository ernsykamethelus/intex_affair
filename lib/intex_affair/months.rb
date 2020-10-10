class IntexAffair::Month 
  @@all = ["October", "November", "December"]
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end
  
  def self.all 
    @@all
  end
end