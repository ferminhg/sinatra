require "sinatra"

class ShoppingListController < Sinatra::Base
  set :views, settings.root + '/views'
  get '/'  do
    Sho
    erb :index # template 
  end

  get('/wop') {'Wop wop !!! 🐡🐡🐡🐡🐡' }
end