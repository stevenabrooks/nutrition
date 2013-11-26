class AddImageToNutritionist < ActiveRecord::Migration
  def change
    add_column :nutritionists, :image, :string
  end
end
