class HkPublicHolidaysController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /hk_public_holidays
  # GET /hk_public_holidays.xml
  def index
    @hk_public_holidays = HkPublicHoliday.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hk_public_holidays }
    end
  end

  # GET /hk_public_holidays/1
  # GET /hk_public_holidays/1.xml
  def show
    @hk_public_holiday = HkPublicHoliday.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hk_public_holiday }
    end
  end

  # GET /hk_public_holidays/new
  # GET /hk_public_holidays/new.xml
  def new
    @hk_public_holiday = HkPublicHoliday.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hk_public_holiday }
    end
  end

  # GET /hk_public_holidays/1/edit
  def edit
    @hk_public_holiday = HkPublicHoliday.find(params[:id])
  end

  # POST /hk_public_holidays
  # POST /hk_public_holidays.xml
  def create
    @hk_public_holiday = HkPublicHoliday.new(params[:hk_public_holiday])

    respond_to do |format|
      if @hk_public_holiday.save
        format.html { redirect_to(@hk_public_holiday, :notice => 'Hk public holiday was successfully created.') }
        format.xml  { render :xml => @hk_public_holiday, :status => :created, :location => @hk_public_holiday }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hk_public_holiday.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hk_public_holidays/1
  # PUT /hk_public_holidays/1.xml
  def update
    @hk_public_holiday = HkPublicHoliday.find(params[:id])

    respond_to do |format|
      if @hk_public_holiday.update_attributes(params[:hk_public_holiday])
        format.html { redirect_to(@hk_public_holiday, :notice => 'Hk public holiday was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hk_public_holiday.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hk_public_holidays/1
  # DELETE /hk_public_holidays/1.xml
  def destroy
    @hk_public_holiday = HkPublicHoliday.find(params[:id])
    @hk_public_holiday.destroy

    respond_to do |format|
      format.html { redirect_to(hk_public_holidays_url) }
      format.xml  { head :ok }
    end
  end
end
