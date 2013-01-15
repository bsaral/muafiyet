class CreateClassnames < ActiveRecord::Migration
  def change
    create_table :classnames do |t|
      t.string :schoolname
      t.string :classname
      t.string :floor
      t.datetime :examdate
      t.string :desk
      t.integer :totaldesk

      t.timestamps
    end
  end
end
