class AddOkulnoOnUsers < ActiveRecord::Migration
  def change
    add_column :users, :okulno, :string
  end
end
