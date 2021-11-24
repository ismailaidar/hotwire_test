class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.date :dob
      t.string :phone
      t.boolean :active

      t.timestamps
    end
  end
end
