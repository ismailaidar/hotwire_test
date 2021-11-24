class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :patient, null: false, foreign_key: true
      t.string :street
      t.string :zip
      t.string :city

      t.timestamps
    end
  end
end
