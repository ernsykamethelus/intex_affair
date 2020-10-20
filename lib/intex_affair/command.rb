require_relative 'event.rb'
require_relative 'months.rb'
require_relative 'scraper.rb'

class IntexAffair::Command

  # require_relative 'months.rb'
  # require_relative 'event.rb'

   def greeting
     puts 'Bienvenue to Intex!'
    #  @input = ""
    #  until @input == "exit"
    name_and_message
    # chosen_months       #--> only the months left over for the year of 2020
    user_chosen_month
    get_month
   goodbye
  end


 def name_and_message
   puts "\nHello,\nDue to COVID-19, we want to protect our team and you.\nFor your own safety and to ongoing precautionary measures, please contact the business directly for updated hours and availabilty.\nThank you for your support.\n"
 end
 
 
#  def chosen_months
#    #to be scraped
#    @months = IntexAffair::Month.all #i wish i had some months so i gave it a list of months
#  end
 
 def user_chosen_month
 # list months
    puts "\nHappy Choosing:\n"
    # @months.each do |month|
    # puts month.name
  end

  def get_month
    @months = IntexAffair::Month.all
    chosen_month = gets.strip.to_i 
    show_events_for(chosen_month) 
    # if valid_input(chosen_month, @months)
  end
  
  # def valid_input(input, data)
  #   input.to_i <= data.length && input.to_i > 0 
  # end

   def show_events_for(chosen_month)
    puts "\nPlease Choose Desired Event:\n"
    month = @months
    #month.get_events
    puts "Here are events for #{month}"
    month.events.each.with_index(1) do |event, i|
      puts "{i}. #{event}"
      require 'pry'
    end
  get_month(month)
  end


  def choose_ending
    puts "If your desired event was chosen, Tap 'That's it' to exit"
    @input = gets.strip
  end

  def goodbye
  puts "Thank you!"
   end
  end
