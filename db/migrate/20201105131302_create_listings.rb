class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :city
      t.string :country
      t.text :airbnb_url
      t.float :occupancy_rate, default: 0.0
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
