class CreateHkPublicHolidays < ActiveRecord::Migration
  def self.up
    create_table :hk_public_holidays do |t|
      t.integer :year
      t.date :date, :unique => true

      t.timestamps
    end
  end

  def self.down
    drop_table :hk_public_holidays
  end
end
