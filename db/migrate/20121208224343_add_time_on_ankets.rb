class AddTimeOnAnkets < ActiveRecord::Migration
  def change
    add_column :ankets, :time, :datetime
  end
end
