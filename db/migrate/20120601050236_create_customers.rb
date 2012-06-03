class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :kind
      t.integer :billing_id

      t.timestamps
    end
  end
end
