class Event < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :user
  has_many :event_instances, :order => "time", :dependent => :destroy
end
