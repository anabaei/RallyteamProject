class CreateSearchqueries < ActiveRecord::Migration[5.1]
  def change
    create_table :searchqueries do |t|
      t.references :user, foreign_key: true
      t.string :searchword

      t.timestamps
    end
  end
end
