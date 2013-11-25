class RemoveEmail < ActiveRecord::Migration
  def up
    remove_column :nutritionists, :email
  end

  def down
    add_column :nutritionists, :email, :string
  end
end
