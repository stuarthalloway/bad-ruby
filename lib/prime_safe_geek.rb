require 'prime'
class Module
  def prime_accessor(sym)
    attr_reader sym
    writer = <<-END
def #{sym}=(value)
  raise ArgumentError, "Must be a Prime" unless Prime === value
  @#{sym} = value
end
END
  self.module_eval(writer)
  end
end

class PrimeSafeGeek
  def initialize(name, favorite_prime)
    self.name = name
    self.favorite_prime = favorite_prime
  end
  attr_accessor :name
  prime_accessor :favorite_prime
end

