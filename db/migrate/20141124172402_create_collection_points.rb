class CreateCollectionPoints < ActiveRecord::Migration
  def change
    create_table :collection_points do |t|
      t.references :user, index: true
      t.string :address
      t.string :name
      t.string :google_address
      t.string :complement

      t.timestamps
    end
  end
end
