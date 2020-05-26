

class ShoppingListItemRepository
  def initialize(io)
    @io = io
  end

  def save item
    @io.write item
  end

  def findAll 
    @io.findAll
  end
end

class InMemory
  def initialize
    @array = []
  end

  def write item
    @array.append item
  end

  def findAll
    @array.to_a
  end
end