class AddNameToSearch < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :name, :string
  end
end
