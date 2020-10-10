class IntexAffair::Command
  
   def greeting
     puts 'Bienvenue to Intex!'
    name_and_message
    printed_months        #--> only the months left over for the year of 2020
    user_chosen_month
    get_chosen_month
    valid_input
    #make_tags
    # get_events_for(month)
    #list_events
    #chosen_event
    mask_up
   end
 end 
 
 def name_and_message
   @name = "name"
   puts "\nHello #{@name},\nDue to COVID-19, we want to protect our team and you.\nFor your own safety and to ongoing precautionary measures, please contact the business directly for updated hours and availabilty.\nThank you for your support.\n"
 end
 
 
 def printed_months
   #to be scraped
   puts "\nHappy Choosing:"
   @months = ["October", "November", "December"]
 end
 
 def user_chosen_month
 # list months
    @months.each.with_index(1) do |month, index|
    puts "#{index}. #{month}"
  end
  
  def get_chosen_month
    chosen_month = gets.strips.to_i 
    show_events_for(chosen_month) if valid_input(chosen_month, @months)
  end
  
  def valid_input(inout, data)
     input.to_i <= data.lenght && input.to_i > 0 
   end
end
  
#   def make_tags(tag, word)
#     "<#{tag}> #{word} </#{tag}>"
# end
# print make_tags("i", "printed_months")
#   end


def mask_up
  puts "\nEvery person + every mask makes a difference. Don't forget to mask up!"
end