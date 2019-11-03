class ChangeIntegerLimitInContacts < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :phone, :integer, limit: 8
  end
end
