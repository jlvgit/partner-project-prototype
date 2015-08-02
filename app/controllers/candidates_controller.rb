class CandidatesController < ApplicationController

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to candidate_path, alert: "New Candidate Saved!"
    else
      render :new
    end
    
  end


  private

  def candidate_params
    params.require(:candidate).permit(:id, :scorecard_id, :interview_date, :name, :interviewer,
                                      :score_01, :score_02, :score_03, :score_04, :score_05)
  end
end
