class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, unique: true, null: false
      t.string :user_id, null: false
      t.timestamps
    end

    add_index :contacts, :email
  end
end
