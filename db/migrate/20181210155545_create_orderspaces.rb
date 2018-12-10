class CreateOrderspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :orderspaces do |t|
      t.string :coworkingspace_id
      t.string :integer
      t.integer :peopleNumber
      t.date :beginDate
      t.date :finishDate
      t.float :totalSum
      t.integer :user_id

      t.timestamps
    end
  end
end
