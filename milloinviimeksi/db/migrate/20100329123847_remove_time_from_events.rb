class RemoveTimeFromEvents < ActiveRecord::Migration
  def self.up
    remove_column :events, :time
  end

  def self.down
    add_column :events, :time, :timestamp
  end
end
