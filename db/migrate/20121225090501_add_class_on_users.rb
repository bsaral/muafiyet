class AddClassOnUsers < ActiveRecord::Migration
  def change
    add_column :users, :class, :string
  end
end
