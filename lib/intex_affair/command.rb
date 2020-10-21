require 'pry'

class IntexAffair::Command

   def greeting
     puts 'Bienvenue to Intex!'
    #  @input = ""
    #  until @input == "exit"
    name_and_message
    chosen_months       #--> only the months left over for the year of 2020
    @months
    user_chosen_month
  #   get_month
  #  goodbye
  end

 def name_and_message
     puts "\nHello,\nDue to COVID-19, we want to protect our team and you.\nFor your own safety and to ongoing precautionary measures, please contact the business directly for updated hours and availabilty.\nThank you for your support.\n"
 end
 
 def months
  @months
 end

 def chosen_months
   #to be scraped
   @months = IntexAffair::Scraper.scraped_months
   #i wish i had some months so i gave it a list of months
 end
 
 def user_chosen_month
 # list months
 @months = []
    puts "\nHappy Choosing:\n"
    @months.each do |month|
      puts @months
    end
  end
  
  #     def valid_input(input, data)
  #   input.to_i <= data.length && input.to_i > 0 
  # end

   def show_events_for(chosen_month)
    puts "\nPlease Choose Desired Event:\n"
    month = @months
    #month.get_events
    puts "Here are events for #{month}"
    month.events.each.with_index(1) do |event, i|
      puts "{i}. #{event}"
    end
  get_month(month)
  end

    def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end

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
  end

    def goodbye
  puts "Thank you!"
    end
  end