class RemoveSpecialties < ActiveRecord::Migration
  def up
    remove_column :nutritionists, :specialties
  end

  def down
    add_column :nutritionists, :specialties, :string
  end
end
