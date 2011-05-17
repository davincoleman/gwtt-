class AddExtraToIdenity < ActiveRecord::Migration
  def self.up
    add_column :identities, :ServiceID, :string
    add_column :identities, :ServiceIdentifier, :string
    add_column :identities, :HomeTerritory, :string
  end

  def self.down
    remove_column :identities, :HomeTerritory
    remove_column :identities, :ServiceIdentifier
    remove_column :identities, :ServiceID
  end
end
