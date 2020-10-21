What will be the goal?

1. who is my user?
2. what is the pain point?
3. How do I use my solution to overcome the problem?

- user is asked for preferences.
-  user sees list of preferences.
-  user selects preferencs. 
-   user is asked for event.
-   user see list of event details.
-   user selects events

Classes #collection #blueprint #factory
- Event 
- Command ---> to interact with our user, to know about the events and store them there, to just be responsible for interacting with our user.
- Scrappy/Runner ----> going to get data- scraping data

#   def valid_input(input, data)
#     input.to_i <= data.length && input.to_i > 0 
#   end

#    def show_events_for(chosen_month)
#     puts "\nPlease Choose Desired Event:\n"
#     month = @months
#     #month.get_events
#     puts "Here are events for #{month}"
#     month.events.each.with_index(1) do |event, i|
#       puts "{i}. #{event}"
#       require 'pry'
#     end
#   get_month(month)
#   end


#   def choose_ending
#     puts "If your desired event was chosen, Tap 'That's it' to exit"
#   end

#     def goodbye
#   puts "Thank you!"
#     end
#   end
# end
#end