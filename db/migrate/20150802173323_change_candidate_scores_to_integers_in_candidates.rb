class ChangeCandidateScoresToIntegersInCandidates < ActiveRecord::Migration
  def change
    change_column :candidates, :score_02, :integer
    change_column :candidates, :score_03, :integer
    change_column :candidates, :score_04, :integer
    change_column :candidates, :score_05, :integer
  end
end
