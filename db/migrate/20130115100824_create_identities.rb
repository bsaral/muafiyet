class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :name
      t.string :no
      t.string :schname
      t.string :clsname
      t.string :flat
      t.datetime :exmdate
      t.string :exmdesk

      t.timestamps
    end
  end
end
