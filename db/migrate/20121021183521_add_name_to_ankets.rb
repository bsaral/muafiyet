class AddNameToAnkets < ActiveRecord::Migration
  def change
    add_column :ankets, :name, :string
  end
end
