class AddFieldsToYogurt < ActiveRecord::Migration
  def change
  	add_column :yogurts, :flavor, :string
  	add_column :yogurts, :topping, :string
  	add_column :yogurts, :quantity, :float
  end
end
