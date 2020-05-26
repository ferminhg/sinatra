require 'json'

class ShoppingListItem
  attr_reader :quantity
  private_class_method :new

  def empty?
    @product_name.empty?
  end

  def self.create(product_name, quantity=0)
    new(product_name, quantity)
  end
 
  def initialize(product_name='', quantity=0)
    @product_name = product_name
    @quantity = quantity
  end

  def to_s
    quantity_s = " (#{@quantity})" if quantity > 0 
    "#{@product_name}#{quantity_s}"
  end

  def as_json(options={})
    {
      product_name: @product_name,
      quantity: @quantity
    }
  end

  def to_json(*options)
    as_json(*options).to_json(*options)
  end
end

