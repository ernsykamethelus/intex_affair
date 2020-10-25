require 'pry'

class IntexAffair::Command

   def greeting
     puts 'Bienvenue to Intex!'
    get_message
    # get_months
    list_months
    get_user_month
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

  def get_user_month
    chosen_month = gets.strip.to_i
  end

      def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end

  #  def list_events
  #   # puts "\nPlease Choose Desired Event:\n"
  #   puts scraping_events
  #   # puts "Here are events for #{month}"
  #   # month.events.each.with_index(1) do |event, idx|
  #   #   puts "#{idx}. #{event}"
  #   end
  # # get_month(month)
  # # end

  #   def valid_input(input, data)
  #   input.to_i <= data.length && input.to_i > 0 
  #   end

  def get_user_event
    puts "Choose an event:"
    input = gets.strip
    event = @months
    puts self.scraping_events
  end

  def choose_ending
    puts "If your desired event was chosen, Tap 'That's it' to exit"
  end

    def goodbye
  puts "Thank you!"
    end