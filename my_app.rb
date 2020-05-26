require "sinatra"
require "sinatra/reloader"
require "./src/application/shopping_list_controller"

# https://github.com/sinatra/sinatra#modular-vs-classic-style
class MyApp < Sinatra::Base
  use ShoppingListController
  configure :development do
    register Sinatra::Reloader
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end