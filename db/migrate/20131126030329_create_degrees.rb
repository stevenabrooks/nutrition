class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
