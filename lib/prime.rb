class Prime
  def self.===(value)
    ('1' * value) !~ /^1?$|^(11+?)\1+$/
  end
end

