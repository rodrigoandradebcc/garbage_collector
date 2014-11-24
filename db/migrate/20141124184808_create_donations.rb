class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :user, index: true
      t.references :collection_point, index: true
      t.references :bonu, index: true
      t.string :pending
      t.integer :points

      t.timestamps
    end
  end
end
