Given /^an event named "(.*)" exists for user "(.*)"$/ do |name, user|
  Event.create!(
    :name => name,
    :user => User.find_by_name(user)
  )
end

Given /^an event named "(.*)" with (\d+) occasion(?:|s) exists for user "(.*)"$/ do |name, times, user|
  ev = Event.create!(
    :name => name,
    :user => User.find_by_name(user)
  )
  times.to_i.times do |i|
    EventInstance.create!(
      :time => (Time.now - i.day),
      :event_id => ev.id
    )
  end
end