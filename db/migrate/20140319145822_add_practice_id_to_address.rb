class AddPracticeIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :practice_id, :integer
  end
end
