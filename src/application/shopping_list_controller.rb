require "sinatra"

class ShoppingListController < Sinatra::Base
  set :views, settings.root + '/views'
  get '/'  do
    erb :index
  end

  get('/wop') {'Wop wop !!! 🐡🐡🐡🐡🐡' }
end