class AddEmailAddToIdentity < ActiveRecord::Migration
  def self.up
    add_column :identities, :EmailAddress, :string
    Identity.find(:all).each do |i|
      i.update_attribute :EmailAddress , i.email
    end
    remove_column :identities, :email
  end

  def self.down
    add_column :identities, :email, :string
    self.email = self.EmailAddress
    Identity.find(:all).each do |i|
      i.update_attribute :email , i.EmailAddress
    end
    remove_column :identities, :EmailAddress
  end
end
