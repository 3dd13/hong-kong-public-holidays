require 'mechanize'

namespace :holidays do
  desc "Scraping holidays data from hk gov website"
  task :scrape => :environment do
    agent = Mechanize.new
    
    HkPublicHoliday.delete_all
    
    homepage_urls.each do |url|
      page = agent.get(url)
      year = page.search("#pageHeader").text.match(/General holidays for (\w*)/)[1].to_i
    
      page.search(".content table tr").map do |row|
        cells = row.search("td")
        date = cells[1].text.strip.match(/(\d*\s\w*)/)
        if date
          tmp_date = Date.parse(date[1])
          date_value = Date.new(year, tmp_date.month, tmp_date.day)
          HkPublicHoliday.create!(:date => date_value, :description => cells[0].text, :year => date_value.year)
        end
      end
    end
  end
end

def homepage_urls
  urls = []
  
  (2007..Date.today.year).to_a.each do |year|
    urls << "http://www.gov.hk/en/about/abouthk/holiday/#{year}.htm"
  end
  urls << "http://www.gov.hk/en/about/abouthk/holiday/"
  
  urls
end