# This migration comes from admin_engine (originally 20121029000000)
class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.references :user, :null => false
    end

    add_index :admins, [:user_id], :unique => true
  end
end
