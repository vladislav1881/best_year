class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :offer_type
      t.integer :rooms
      t.integer :price
      t.text :address
      t.references :city, index: true
      t.text :discribtion
      t.integer :floor
      t.integer :floors

      t.timestamps
    end
  end
end
