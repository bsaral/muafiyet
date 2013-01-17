class AddTtldeskOnIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :ttldesk, :integer 
  end
end
