class AddDescriptionToPublicHolidays < ActiveRecord::Migration
  def self.up
    add_column :hk_public_holidays, :description, :string
  end

  def self.down
    remove_column :hk_public_holidays, :description
  end
end
