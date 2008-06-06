class Module
  def string_accessor(sym)
    attr_reader sym
    writer = <<-END
def #{sym}=(value)
  raise ArgumentError, "Must be a String" unless String === value
  @#{sym} = value
end
END
  self.module_eval(writer)
  end
end

class StringSafeGeek
  def initialize(name, favorite_prime)
    self.name = name
    self.favorite_prime = favorite_prime
  end
  string_accessor :name
  attr_accessor :favorite_prime
end

