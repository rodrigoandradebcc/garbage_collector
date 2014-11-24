class CreateBonus < ActiveRecord::Migration
  def change
    create_table :bonus do |t|
      t.string :name
      t.integer :points

      t.timestamps
    end
  end
end
