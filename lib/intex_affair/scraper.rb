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
end

      def self.scraped_events
        page = Nokogiri::HTML(URI.open("https://www.wmoda.com/visit-2/"))
        events = page.css("div.recent-posts-2 li")
        event.each do |e|
        # title = e.css ().text.strip
        # url = e.css("a").attr("href").value
        name = e.text
        IntexAffair::Event.new
       end
      end

    #   def self.event(event)
    #     url = "https://www.wmoda.com#{event.url}"
    #     doc = Nokogiri::HTML(open(url))
    #     lis = doc.css("div#recent-posts-2 li")
    #     lis.each do |li|
    #     info = li.text.strip
    #     event.key_info << info
    #     end
    #   end
    # end
