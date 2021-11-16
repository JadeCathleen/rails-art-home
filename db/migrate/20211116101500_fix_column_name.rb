class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :artpieces, :type, :category
  end
end
