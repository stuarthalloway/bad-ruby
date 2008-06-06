# 1. Create a widget
class Widget
  def initialize(capacity)
    @capacity = capacity
  end
end

# 2. Change your mind!
class Widget
  def self.new(capacity)
    if (capacity >= 100)
      SuperWidget.new(capacity)
    else
      super
    end
  end
end

class SuperWidget
  def initialize(capacity)
    @capacity = capacity
  end
end
