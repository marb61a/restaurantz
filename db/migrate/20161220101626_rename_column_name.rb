class RenameColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :country, :state_provence
  end
end
