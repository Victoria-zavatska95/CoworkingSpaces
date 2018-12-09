class AddAreaToCoworkingspace < ActiveRecord::Migration[5.2]
  def change
    add_column :coworkingspaces, :area, :float
  end
end
