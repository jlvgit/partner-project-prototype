class CandidatesController < ApplicationController
  def index
    @candidate = Candidate.all
  end

  def new
    @candidate = Candidate.new
    @scorecard = Scorecard.new(params[:id])
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to candidates_path, alert: "New Candidate Saved!"
    else
      render :new
    end
  end

  def show
    @candidate = Candidate.new
  end

  def compare
    @candidate = Candidate.all
  end

  private

  def candidate_params
    params.require(:candidate).permit(:id, :scorecard_id, :interview_date, :name, :interviewer,
                                      :score_01, :score_02, :score_03, :score_04, :score_05)
  end
end
