class RemoveDobFromUser < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :dob, :date
  end
end
