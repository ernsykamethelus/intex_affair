class IntexAffair::Command
  
   def greeting
     puts 'Bienvenue to Intex!'
    name_and_message
     get_months       #--> only the months left over for the year of 2020
    user_chosen_month
    get_chosen_month
   end
 
 def name_and_message
   puts "\nHello,\nDue to COVID-19, we want to protect our team and you.\nFor your own safety and to ongoing precautionary measures, please contact the business directly for updated hours and availabilty.\nThank you for your support.\n"
 end
 
 
 def get_months
   #to be scraped
   @months = IntexAffair::Month.all #i wish i had some months so i gave it a list of months
 end
 
 def user_chosen_month
 # list months
    puts "\nHappy Choosing:\n"
    @months.each.with_index(1) do |month, index|
    puts "#{index}. #{month.name}"
  end
end

  def get_user_month
    chosen_month = gets.strip.to_i 
    show_events_for(chosen_month) if valid_input(chosen_month, @months)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end

  def show_events_for(chosen_month)
    month = @months[chosen_month -1]
    month.get_events
    puts "Here are events for #{month.name}"
    month.events.each.with_index(1) do |event, index|
      puts "{index}. #{event.name}
    end
  end
end