class CreateYogurts < ActiveRecord::Migration
  def change
    create_table :yogurts do |t|

      t.timestamps
    end
  end
end
