class AddAttributesTo < ActiveRecord::Migration
  def change
    rename_column :attributes, :attribute_text, :attribute_01
    add_column :attributes, :attribute_02, :string
    add_column :attributes, :attribute_03, :string
    add_column :attributes, :attribute_04, :string
    add_column :attributes, :attribute_05, :string
  end
end
