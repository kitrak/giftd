class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.boolean :active, default: 1
      t.boolean :deleted, default: 0
      t.timestamps
    end
  end
end
