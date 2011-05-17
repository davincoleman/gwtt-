class AddUserToIdentity < ActiveRecord::Migration
  def self.up
    add_column :identities, :user_id, :int
  end

  def self.down
    remove_column :identities, :user_id
  end
end
