# generalized "type safety"
# proof of concept, not a recommendation!
require 'prime'
class Module
  def typed_accessor(type, sym)
    attr_reader sym
    writer = <<-END
def #{sym}=(value)
  raise ArgumentError, "Must be a #{type}" unless #{type} === value
  @#{sym} = value
end
END
  self.module_eval(writer)
  end
end

class GeneralGeek
  def initialize(name, favorite_prime)
    self.name = name
    self.favorite_prime = favorite_prime
  end
  typed_accessor Symbol, :name
  typed_accessor Prime, :favorite_prime
end  

