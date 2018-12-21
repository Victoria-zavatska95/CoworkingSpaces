class AddIsbookedToCoworkingspace < ActiveRecord::Migration[5.2]
  def change
    add_column :coworkingspaces, :isbooked, :boolean, default: false
  end
end
