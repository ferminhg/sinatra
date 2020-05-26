require './src/domain/shopping_list_item.rb'

RSpec.describe ShoppingListItem do

  it 'creates a shoppingListItem class' do
    list_item = ShoppingListItem.send(:new)
    expect(list_item).to be_kind_of(ShoppingListItem)
  end

  it 'create a shoppingListItem empty' do
    list_item = ShoppingListItem.send(:new)
    expect(list_item).to be_empty
  end

  it 'create a shoppingListItem with name and quantity' do
    list_item = ShoppingListItem.send(:new, 'a')
    expect(list_item).not_to be_empty
  end

  it 'create a shoppingListItem with named constructor' do
    list_item = ShoppingListItem.create('a', 0)
    expect(list_item).to be_kind_of(ShoppingListItem)
    expect(list_item.quantity).to be_zero
  end 

  it 'get shoppingListItem as a string' do
    expect(ShoppingListItem.create('a', 0).to_s).to eq('a')
    expect(ShoppingListItem.create('a', 1).to_s).to eq('a (1)')
    expect(ShoppingListItem.create('a b', 100).to_s).to eq('a b (100)')
  end
end