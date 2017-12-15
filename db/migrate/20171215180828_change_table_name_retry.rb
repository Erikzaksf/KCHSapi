class ChangeTableNameRetry < ActiveRecord::Migration[5.1]
  def change
    rename_table :quotes, :animals
  end
end
