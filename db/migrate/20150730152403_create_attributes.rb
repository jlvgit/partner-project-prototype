class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|

      t.string :attribute_text

      t.timestamps null: false
    end
  end
end
