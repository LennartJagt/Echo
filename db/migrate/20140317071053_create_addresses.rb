class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :street_number
      t.string :zip_code
      t.string :town

      t.timestamps
    end
  end
end
