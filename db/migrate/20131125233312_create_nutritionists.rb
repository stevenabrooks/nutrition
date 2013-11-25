class CreateNutritionists < ActiveRecord::Migration
  def change
    create_table :nutritionists do |t|
      t.string :name
      t.string :practice
      t.string :specialties
      t.text :statement
      t.string :degrees
      t.string :title
      t.string :email
      t.string :website
      t.string :expertise
      t.string :education
      t.string :awards

      t.timestamps
    end
  end
end
