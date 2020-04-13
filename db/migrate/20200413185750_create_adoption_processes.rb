class CreateAdoptionProcesses < ActiveRecord::Migration[6.0]
  def change
    create_table :adoption_processes do |t|
      t.integer :animal_id
      t.integer :user_id
      t.string :status
      t.datetime :meeting_date

      t.timestamps
    end
  end
end
