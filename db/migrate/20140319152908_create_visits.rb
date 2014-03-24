class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :date
      t.integer :practice_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
