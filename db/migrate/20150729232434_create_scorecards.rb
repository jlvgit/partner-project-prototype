class CreateScorecards < ActiveRecord::Migration
  def change
    create_table :scorecards do |t|

      t.string :attributes
      t.string :position
      
      t.timestamps null: false
    end
  end
end
