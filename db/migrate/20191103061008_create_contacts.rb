class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.text :address
      t.string :company
      t.text :photo

      t.timestamps
    end
  end
end
