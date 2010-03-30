class CreateEventInstances < ActiveRecord::Migration
  def self.up
    create_table :event_instances do |t|
      t.integer :event_id
      t.timestamp :time

      t.timestamps
    end
  end

  def self.down
    drop_table :event_instances
  end
end
