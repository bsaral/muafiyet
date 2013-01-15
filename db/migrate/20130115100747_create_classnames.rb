class CreateClassnames < ActiveRecord::Migration
  def change
    create_table :classnames do |t|
      t.string :school_name
      t.string :class_name
      t.string :floor
      t.datetime :exam_date
      t.string :desk
      t.integer :total_desk

      t.timestamps
    end
  end
end
