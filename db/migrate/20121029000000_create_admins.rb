class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.references :account, :null => false
    end

    add_index :admins, [:account_id], :unique => true
  end
end
