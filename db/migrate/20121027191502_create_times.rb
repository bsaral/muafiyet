class CreateTimes < ActiveRecord::Migration
  def change
    create_table :times do |t|
      t.datetime :time_login
      t.datetime :time_start

      t.timestamps
    end
  end
end
