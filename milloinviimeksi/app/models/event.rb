class Event < ActiveRecord::Base
  validates_presence_of :name

  has_many :event_instances, :order => "time", :dependent => :destroy
end
