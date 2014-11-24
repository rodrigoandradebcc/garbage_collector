class AddColumRoleIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :role, index: true, default: 1
  end
end
