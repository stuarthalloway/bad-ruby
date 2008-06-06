require File.join(File.dirname(__FILE__), "test_helper.rb")
require 'general_geek'

Expectations do
  expect :symbol_name do
    GeneralGeek.any_instance.stubs(:favorite_prime=)
    GeneralGeek.new(:symbol_name, nil).name
  end
  
  expect ArgumentError do
    GeneralGeek.any_instance.stubs(:favorite_prime=)
    GeneralGeek.new("invalid name", nil).name
  end

  expect 13 do
    GeneralGeek.any_instance.stubs(:name=)
    GeneralGeek.new(nil, 13).favorite_prime
  end
  
  expect ArgumentError do
    GeneralGeek.any_instance.stubs(:name=)
    GeneralGeek.new(nil, 12).favorite_prime
  end
end
  
