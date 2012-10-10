class CreateAnkets < ActiveRecord::Migration
  def change
    create_table :ankets do |t|
      t.string :answer

      t.timestamps
    end
  end
end
