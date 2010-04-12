class EventInstance < ActiveRecord::Base
  belongs_to :event

  validate :must_be_in_past

  def must_be_in_past
    errors.add_to_base("We can't see to the future, can we?") unless time < Time.now
  end
end
