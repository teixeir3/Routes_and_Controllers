class AddContactShareIndex < ActiveRecord::Migration
  def up
    add_index :contact_shares, :contact_id
    add_index :contact_shares, :user_id
  end

  def down
  end
end
