class CreateCoworkingSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :coworking_spaces do |t|
      t.integer :user_id
      t.float :price
      t.float :area
      t.string :description

      t.timestamps
    end
  end
end
