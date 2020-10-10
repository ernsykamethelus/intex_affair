class IntexAffair::Scraper
  def scraped_months
     page = Nokogiri::HTML(open("https://www.pamm.org/calendar"))
     binding.pry
  end
end
