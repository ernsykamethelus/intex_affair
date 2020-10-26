require 'pry'

class IntexAffair::Command

   def greeting
     puts 'Bienvenue to Intex!'
    get_message
    # get_months
    list_months
    # list_events
    get_user_event
    choose_ending
    goodbye
  end

 def get_message
     puts "\nHello,\nDue to COVID-19, we want to protect our team and you.\nFor your own safety and to ongoing precautionary measures, please contact the business directly for updated hours and availabilty.\nThank you for your support.\n"
 end
 
 def list_months
 # list months
    puts "\nHappy Choosing:\n"
      puts scraping_months.text
    end
  end

  def get_user_event
    puts "\nChoose an event:\n"
    puts get_events.text
  end

  def choose_ending
    print "\nIf your desired event was chosen, Tap 'That's it' to exit!\n"
  end

    def goodbye
  puts "Thank you!"
    end