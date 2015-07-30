class AddColumnIndustryToScorecards < ActiveRecord::Migration
  def change
    add_column :scorecards, :industry, :string
  end
end
