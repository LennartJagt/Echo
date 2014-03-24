class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :name
      t.string :telephone
      t.string :vat_number
      t.string :email_address
      t.string :bank_account_number
      t.string :owner_first_name
      t.string :owner_last_name

      t.timestamps
    end
  end
end
