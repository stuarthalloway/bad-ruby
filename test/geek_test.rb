require File.join(File.dirname(__FILE__), "test_helper.rb")
require 'geek'

Expectations do
  expect :any_name_is_valid do
    Geek.new(:any_name_is_valid, nil).name
  end

  expect :any_favorite_prime_is_valid do
    Geek.new(nil, :any_favorite_prime_is_valid).favorite_prime
  end
end  
