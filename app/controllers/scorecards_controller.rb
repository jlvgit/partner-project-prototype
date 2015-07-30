class ScorecardsController < ApplicationController
  def index
    @scorecard = Scorecard.all
  end

  def new
    @scorecard = Scorecard.new
  end

  def create
    @scorecard = Scorecard.new(scorecard_params)
    if @scorecard.save
      redirect_to scorecards_path, alert: "New Scorecard Sadve!"
    else
      render :new
    end
  end

  def show
    @scorecard = Scorecard.new
  end


private

  def scorecard_params
    params.require(:scorecard).permit(:position, :industry, :attribute_name)
  end

end
