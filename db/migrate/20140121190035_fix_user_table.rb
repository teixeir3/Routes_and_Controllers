class FixUserTable < ActiveRecord::Migration
  def up
    create_table :users, force: true do |t|
      t.string :username, null: false, unique: true

      t.timestamps
    end
  end
end
