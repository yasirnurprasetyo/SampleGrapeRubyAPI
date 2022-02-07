class API < Grape::API
    #1st segment name of url ex) http://localhost/api/
    prefix 'api'
    # app/api/resources/v1/root.Mount rb
    mount Resources::V1::Root
  end