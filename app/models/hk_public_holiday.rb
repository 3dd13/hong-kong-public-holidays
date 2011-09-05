class HkPublicHoliday < ActiveRecord::Base
  validates_uniqueness_of :date
  
  def self.all_years
    HkPublicHoliday.select("year").group("year").map(&:year).sort
  end
  
  def self.to_csv_response
    something = FasterCSV.generate do |csv|
      csv << ["Year", "Date"]
      
      self.scoped.each do |holiday|
        csv << [ holiday.year, holiday.date ]
      end
      
    end

    something
  end
    
  scope :by_year, lambda {|year|
    where(:year => year).order("date ASC")
    }
end
