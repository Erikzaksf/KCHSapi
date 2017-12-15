class AddAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.column :name, :string
      t.column :species, :string
      t.column :breed, :string
      t.column :age, :integer
      t.column :about, :string
      t.column :gender, :string
    end
  end
end
