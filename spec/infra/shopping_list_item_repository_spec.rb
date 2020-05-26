require './src/infra/shopping_list_item_repository.rb'
require './src/domain/shopping_list_item.rb'


RSpec.describe ShoppingListItemRepository do
  it 'save a repository to json' do
    inMemory = InMemory.new
    repo = ShoppingListItemRepository.new inMemory
    item = ShoppingListItem.create('a')
    repo.save item
    expect(repo.findAll[0]).to be item
  end
end