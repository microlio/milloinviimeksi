Given /^an event named "(.*)"$/ do |name|
  Event.create!(
    :name => name
  )
end