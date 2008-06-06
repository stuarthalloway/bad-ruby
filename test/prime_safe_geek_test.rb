require File.join(File.dirname(__FILE__), "test_helper.rb")
require 'prime_safe_geek'

Expectations do
  expect :any_name_works do
    PrimeSafeGeek.new(:any_name_works, 7).name
  end
  
  expect 13 do
    PrimeSafeGeek.new("Justin", 13).favorite_prime
  end
  
  expect ArgumentError do
    PrimeSafeGeek.new("Justin", 12).favorite_prime
  end
end  
