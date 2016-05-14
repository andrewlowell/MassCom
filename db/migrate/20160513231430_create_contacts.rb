class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :number
      t.string :email
      t.boolean :eq
      t.boolean :rs
      t.boolean :wc

      t.timestamps null: false
    end
  end
end
