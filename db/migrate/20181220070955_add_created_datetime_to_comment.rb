class AddCreatedDatetimeToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :created_datetime, :DateTime
  end
end
