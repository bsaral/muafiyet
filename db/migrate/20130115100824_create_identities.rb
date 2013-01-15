class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :name
      t.string :no
      t.string :sch_name
      t.string :cls_name
      t.string :flat
      t.datetime :exm_date
      t.string :exm_desk

      t.timestamps
    end
  end
end
