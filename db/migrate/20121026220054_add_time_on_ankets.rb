class AddTimeOnAnkets < ActiveRecord::Migration
  def change
    add_column :ankets, :time_start, :datetime
    add_column :ankets, :time_finish, :datetime
    add_column :ankets, :time_finish_anket, :datetime
  end
end
