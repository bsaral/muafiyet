class AddUseridOnPasswords < ActiveRecord::Migration
  def change
    add_column :passwords, :userid, :integer
  end
end
