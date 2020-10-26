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

<!-- def self.scraped_months
    doc = Nokogiri::HTML(URI.open("https://www.wmoda.com/visit-2/"))
  
     months = doc.css("select#archives-dropdown-2 option")
    
    months.each do |m|
    name = m.text
     IntexAffair::Month.new(name)

def user_chosen_month
 # list months
    puts "\nHappy Choosing:\n"
    @m.each.with_index(1)do |month, index|
    puts "#{index}. #{month.name}"
  end
end -->

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

   # def self.event(event)
      #   url = "https://www.wmoda.com#{event.url}"
      #   doc = Nokogiri::HTML(open(url))
      #   lis = doc.css("div.recent-posts-2 li")
      #   lis.each do |li|
      #   info = li.text.strip
      #   end
      # end

      
    # def scraping_events
    #   self
    #   # @events = IntexAffair::Scraper.scraped_events
    #   # @@all
    #  end

    # def self.scraped_events
#   page = Nokogiri::HTML(URI.open("https://www.wmoda.com/visit-2/"))
#   events = page.css("div#recent-posts-2 li")
#   events.each do |e|
#     name = e.text
#       #  ref = m.attr("value")
#   # name = m
#    IntexAffair::Event.new
#   #  binding.pry
#    end
#   end