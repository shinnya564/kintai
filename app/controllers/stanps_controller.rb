class StanpsController < ApplicationController

	def top
  	@timecard = Timecard.new()
    @timecards = Timecard.all
	end

  def index
    @timecards = Timecard.all
  end

  def create
  	@timecard = Timecard.new(timecard_params)
  	@timecard.save
    redirect_to request.referer, notice: "ボタンを押しました" and return
  end

  def update
  end

	private

	def timecard_params
    	params.require(:timecard).permit(:attendance, :created_at)
	end

end
