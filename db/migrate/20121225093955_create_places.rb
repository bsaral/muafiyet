class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :classname

      t.timestamps
    end
  end
end
