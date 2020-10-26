# require 'Nokogiri'
# require 'HTTParty'
  require 'pry'

class IntexAffair::Scraper

  def self.scraped_months
  page = Nokogiri::HTML(URI.open("https://www.wmoda.com/visit-2/"))
  months = page.css("select#archives-dropdown-2 option")
  months.each do |m|
    name = m.text
      #  ref = m.attr("value")
  # name = m
   IntexAffair::Month.new
   end
  end

      def self.scraped_events(months)
        page = Nokogiri::HTML(URI.open("https://www.wmoda.com/visit-2/"))
        events = page.css("div#recent-posts-2 li")
        # binding.pry
        events.each do |e|
        title = e.css ("recent-posts-2")
        url = e.css("a").attr("href").value
        name = e.text
        IntexAffair::Event.new
       end
      end
    end
