class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user, index: true
      t.references :offer, index: true

      t.timestamps
    end
  end
end
