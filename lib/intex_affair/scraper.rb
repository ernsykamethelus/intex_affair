class IntexAffair::Scraper
  def scraped_months
     page = Nokogiri::HTML(open(https://www.wmoda.com/visit-2/))
     
    months = page.css("select#archives-dropdown-2 option")
    
    months.each do |m|
    name = m.text
    IntexAffair::Month.new(name)
end
  end
end
