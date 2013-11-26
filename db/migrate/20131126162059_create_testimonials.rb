class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.integer :nutritionist_id
      t.text :text

      t.timestamps
    end
  end
end
