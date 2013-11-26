class CreateNDegrees < ActiveRecord::Migration
  def change
    create_table :n_degrees do |t|
      t.integer :nutritionist_id
      t.integer :degree_id

      t.timestamps
    end
  end
end
