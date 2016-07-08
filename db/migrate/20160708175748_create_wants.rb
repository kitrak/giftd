class CreateWants < ActiveRecord::Migration
  def change
    create_table :wants do |t|
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.integer :sort_order, null: false
      t.boolean :acquired, null: false, default: 0
      t.boolean :deleted, null: false, default: 0
      t.timestamps
    end

    add_foreign_key :wants, :users
    add_foreign_key :wants, :products
  end
end
