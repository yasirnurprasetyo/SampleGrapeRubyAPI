module Resources
    module V1
        class Users < Grape::API
           resource :users do
               desc "user list"
               get do
                   present User.all, with: Entities::V1::UserEntity
               end

               desc "create user"
               params do
                    requires :name, type: String
                    requires :email, type: String
                    requires :age, type: Integer
                end
                post do
                    User.create!({name: params[:name], email: params[:email], age: params[:age]})
                end

                desc "get by id user"
                params do
                    requires :id, type: Integer, desc: "user_id"
                end
                get ":id" do
                    present User.find(params[:id]), with: Entities::V1::UserEntity
                end

                desc "update user"
                route_param :id do
                    put do
                        User.find(params[:id]).update({name: params[:name], email: params[:email], age: params[:age]})
                    end
                end
           end 
        end
    end
end