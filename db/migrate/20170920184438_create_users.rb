class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :name
      t.string :uid
      t.string :token
      t.string :secret
      t.string :image_profile

      t.timestamps
    end
  end
end
