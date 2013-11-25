class RemoveDegrees < ActiveRecord::Migration
  def up
    remove_column :nutritionists, :degrees
  end

  def down
    add_column :nutritionists, :degrees, :string
  end
end
