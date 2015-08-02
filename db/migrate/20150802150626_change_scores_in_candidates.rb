class ChangeScoresInCandidates < ActiveRecord::Migration
  def change
    rename_column :candidates, :scores, :score_01
    add_column :candidates, :score_02, :string
    add_column :candidates, :score_03, :string
    add_column :candidates, :score_04, :string
    add_column :candidates, :score_05, :string
  end
end
