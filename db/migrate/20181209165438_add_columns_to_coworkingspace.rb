class AddColumnsToCoworkingspace < ActiveRecord::Migration[5.2]
  def change
    add_column :coworkingspaces, :user_id, :integer
    add_column :coworkingspaces, :description, :string
    add_column :coworkingspaces, :price, :float
    add_column :coworkingspaces, :city, :string
    add_column :coworkingspaces, :address, :string
    add_column :coworkingspaces, :beginDate, :datetime
    add_column :coworkingspaces, :finishDate, :datetime
    add_column :coworkingspaces, :hasKitchen, :boolean
    add_column :coworkingspaces, :hasMeetroom, :boolean
    add_column :coworkingspaces, :hasFreeWiFi, :boolean
    add_column :coworkingspaces, :hasFreeCookies, :boolean
    add_column :coworkingspaces, :peopleNumber, :integer
  end
end
