class AddUseridToAnkets < ActiveRecord::Migration
  def change
    add_column :ankets, :userid, :integer
  end
end
