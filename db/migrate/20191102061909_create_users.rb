class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.boolean :is_female
      t.date :dob

      t.timestamps
    end
  end
end
