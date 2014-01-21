class CreateContactShares < ActiveRecord::Migration
  def change
    create_table :contact_shares do |t|
      t.integer :contact_id, null: false, unique: true, scope: :user_id
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
