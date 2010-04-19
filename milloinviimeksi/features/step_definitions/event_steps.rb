Given /^an event named "(.*)" exists$/ do |name|
  Event.create!(
    :name => name
  )
end

Given /^an event named "(.*)" with (\d+) occasion(?:|s) exists$/ do |name, times|
  ev = Event.create!(
    :name => name
  )
  times.to_i.times do |i|
    EventInstance.create!(
      :time => (Time.now - i.day),
      :event_id => ev.id
    )
  end
end