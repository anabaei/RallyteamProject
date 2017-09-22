class CreateRawresults < ActiveRecord::Migration[5.1]
  def change
    create_table :rawresults do |t|
      t.references :searchquery, foreign_key: true
      t.string :screen_name
      t.string :name
      t.string :profile_image_url
      t.string :text
      t.string :created_at

      t.timestamps
    end
  end
end
