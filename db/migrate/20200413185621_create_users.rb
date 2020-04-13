class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.boolean :has_animals
      t.text :bio

      t.timestamps
    end
  end
end
