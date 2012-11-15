class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.string :new_password
      t.string :new_password_confirmation
      

      t.timestamps
    end
  end
end
