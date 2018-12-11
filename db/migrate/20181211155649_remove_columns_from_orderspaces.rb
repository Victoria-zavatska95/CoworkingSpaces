class RemoveColumnsFromOrderspaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :orderspaces, :integer, :string
    remove_column :orderspaces, :totalSum, :float
  end
end
