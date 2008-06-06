require File.join(File.dirname(__FILE__), "test_helper.rb")
require 'widget'

Expectations do
  expect Widget do
    Widget.new(50)
  end

  expect SuperWidget do
    Widget.new(100)
  end
end  
