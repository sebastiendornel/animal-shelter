class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.integer :shelter_id
      t.text :bio
      t.integer :age

      t.timestamps
    end
  end
end
