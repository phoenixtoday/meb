class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :name

      t.timestamps
    end
    add_index :players, :name, :uniq => true
  end

  def self.down
    drop_table :players
  end
end
