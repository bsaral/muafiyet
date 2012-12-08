class AddTimeOnUsers < ActiveRecord::Migration
   def change
    add_column :users, :userlogin, :datetime
  end
end
