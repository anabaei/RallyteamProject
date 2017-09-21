class AddSearchkeyToSearch < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :searchkey, :string
  end
end
