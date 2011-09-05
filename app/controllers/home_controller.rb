class HomeController < ApplicationController
  def index
    @year = params[:year]
    if @year
      @holidays = HkPublicHoliday.where(:year => @year)
    else
      @holidays = HkPublicHoliday.scoped
    end
    
    respond_to do |format|
      format.html
      format.xml  { render :xml => @holidays, :except => [:created_at, :id, :updated_at] }
      format.csv  { 
        send_data(@holidays.to_csv_response, :filename => "hk_public_holidays#{@year}.csv", :disposition => "inline", :type => "csv")
      }
    end
  end
end
