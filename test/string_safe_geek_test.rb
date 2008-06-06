require File.join(File.dirname(__FILE__), "test_helper.rb")
require 'string_safe_geek'

Expectations do
  expect "valid name" do
    StringSafeGeek.new("valid name", nil).name
  end
  
  expect ArgumentError do
    StringSafeGeek.new(:not_valid_name, nil).name
  end

  expect :any_favorite_prime_is_valid do
    StringSafeGeek.new("valid name", :any_favorite_prime_is_valid).favorite_prime
  end
end  
