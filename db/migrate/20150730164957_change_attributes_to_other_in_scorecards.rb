class ChangeAttributesToOtherInScorecards < ActiveRecord::Migration
  def change
    rename_column :scorecards, :attributes, :attribute_name
  end
end
