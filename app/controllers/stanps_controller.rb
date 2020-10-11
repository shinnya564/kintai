class StanpsController < ApplicationController

	def top
  	@timecard = Timecard.new()
    @timecards = Timecard.all
    @timecard0s = Timecard0.all
	end

  def index
    @timecards = Timecard.all
  end

  def create
  	@timecard = Timecard.new(timecard_params)
    if @timecard.attendance == "1"
      @timecard = Timecard.new(timecard_params)
    	@timecard.save
      redirect_to request.referer, notice: "出勤しました" and return
    elsif @timecard.attendance == "0"
      @timecard = Timecard0.new(timecard_params)
      @timecard.save
      redirect_to request.referer, notice: "退勤しました" and return
    else
      redirect_to request.referer, notice: "選択してください" and return
    end
  end

  def update
  end

	private

	def timecard_params
    	params.require(:timecard).permit(:attendance, :created_at)
	end

end
