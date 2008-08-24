class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.integer 'x'
      t.integer 'y'
      t.timestamps
    end
    
    add_column :players, 'location_id', :integer
  end

  def self.down
    remove_column :players, 'location_id'
    drop_table :locations
  end
end
