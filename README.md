shopping-list in Hexagonal Architecture
-------------
http://dddsample.sourceforge.net/architecture.html

The template files were in application layer
```From point of DDD. Application Layer is everything that is not Domain layer. Which includes application logic, presentation and application services.```
To run server
```
rackup -p 4567
```


Testing
-----------
http://sinatrarb.com/testing.html

To launch rspec tests
```
$rspec
```

Questions
-----------
Best place to put your views
https://softwareengineering.stackexchange.com/questions/180499/presentation-vs-application-layer-in-ddd 

Application Layer
----------------
Controller files connect end points with uses cases
`*_controller.rb`
```ruby
  #example
  def create 
    create_order = CreateOrder.new(OrderRepository, self)   
    create_order.create current_user, params[:order] 
  end 
  def order_creation_succeeded order 
    redirect_to order_path(order) 
  end 
```