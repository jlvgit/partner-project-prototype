class Candidate < ActiveRecord::Base
  has_one :scorecard

  def total_score number
    Candidate.find(number).score_01 + Candidate.find(number).score_02 +
    Candidate.find(number).score_03 + Candidate.find(number).score_04 +
    Candidate.find(number).score_05
  end
end
