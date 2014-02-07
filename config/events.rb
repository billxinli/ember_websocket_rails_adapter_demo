WebsocketRails::EventMap.describe do
  # You can use this file to map incoming events to controller actions.
  # One event can be mapped to any number of controller actions. The
  # actions will be executed in the order they were subscribed.
  #
  # Uncomment and edit the next line to handle the client connected event:
  #   subscribe :client_connected, :to => Controller, :with_method => :method_name
  #
  # Here is an example of mapping namespaced events:
  #   namespace :product do
  #     subscribe :new, :to => ProductController, :with_method => :new_product
  #   end
  # The above will handle an event triggered on the client like `product.new`.

  namespace :post do
    subscribe :create, :to => Ws::V1::PostsController, :with_method => :create
    subscribe :index, :to => Ws::V1::PostsController, :with_method => :index
    subscribe :show, :to => Ws::V1::PostsController, :with_method => :show
    subscribe :update, :to => Ws::V1::PostsController, :with_method => :update
    subscribe :destroy, :to => Ws::V1::PostsController, :with_method => :destroy
  end
end
