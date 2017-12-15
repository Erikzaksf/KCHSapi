class ChangeTableName < ActiveRecord::Migration[5.1]
  def change
    def self.up
      rename_table :quotes, :animals
    end

    def self.down
      rename_table :animals, :quotes
    end
  end
end
