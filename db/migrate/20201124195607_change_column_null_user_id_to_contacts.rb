class ChangeColumnNullUserIdToContacts < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :user_id, :integer, :null => true
  end
end
