class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|

      t.integer :scorecard_id
      t.integer :scores
      t.datetime :interview_date
      t.string :name
      t.string :interviewer
      
      t.timestamps null: false

    end
  end
end
