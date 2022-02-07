Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount API => '/' #With this method, you don't need to add a route to each action because the base class points to each action in the class.
end
