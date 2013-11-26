class RenameNDegree < ActiveRecord::Migration
  def up
    rename_table :n_degrees, :certifications
  end

  def down
    rename_table :certifications, :n_degrees
  end
end
