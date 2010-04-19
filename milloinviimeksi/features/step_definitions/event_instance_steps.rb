When /^(?:|I )select tomorrow as the date and time$/ do
  select_datetime((Time.now + 1.day).to_s)
end