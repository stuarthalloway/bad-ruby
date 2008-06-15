# No "type safety"
class Geek
  attr_accessor :name, :favorite_prime
  def initialize(name, favorite_prime)
    self.name = name
    self.favorite_prime = favorite_prime
  end
end

