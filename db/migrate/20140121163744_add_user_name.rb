class AddUserName < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :username, null: false, unique: true
    end
  end
end
