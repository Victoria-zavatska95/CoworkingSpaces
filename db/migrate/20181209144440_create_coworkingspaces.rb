class CreateCoworkingspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :coworkingspaces do |t|

      t.timestamps
    end
  end
end
