class ScorecardsController < ApplicationController
  before_action :set_scorecard, only: [:show, :edit, :update, :destroy]

  def index
    @scorecard = Scorecard.all
  end

  def new
    @scorecard = Scorecard.new
  end

  def create
    @scorecard = Scorecard.new(scorecard_params)
    if @scorecard.save
      redirect_to scorecards_path, alert: "New Scorecard Saved!"
    else
      render :new
    end
  end

  def show
    @scorecard = Scorecard.new
  end

private

  def set_scorecard
    @scorecard = Scorecard.find_by(params[:name])
  end

  def scorecard_params
    params.require(:scorecard).permit(:id, :position, :industry, :attribute_name, :name)
  end

end
