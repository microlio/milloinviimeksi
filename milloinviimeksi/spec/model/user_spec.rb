require 'spec_helper'

describe User do

  it "should create a new instance given valid attributes" do
    u = User.new
    u.name = 'name'
    u.password = 'passu'
    u.save.should be true
  end
  
  # it "should not create a new instance w/ empty password" do
  #   u = User.new
  #   u.name = 'name'
  #   u.password = ''
  #   u.save.should be false
  # end
  
  it "should not create a new w/ existing name" do
    u = User.new
    u.name = 'name'
    u.password = 'passu'
    u.save
    u = User.new
    u.name = 'name'
    u.password = 'passu'
    u.save.should be false
  end
end
