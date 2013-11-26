class AddFullTextToDegrees < ActiveRecord::Migration
  def change
    add_column :degrees, :full_title, :string
  end
end
