require "sinatra"
require "sqlite3"

Dir["./app/**/*.rb"].each { |file| require file }

get "/users/new" do
    controller = UsersController.new(params)
    controller.new
end

post "/users" do
    controller = UsersController.new(params, self)
    controller.create
    
end

get "/users/:id" do
    controller = UsersController.new(params)
    controller.show

end

get "/users" do
    controller = UsersController.new(params)
    controller.index
end

get "/users/:id/edit" do
    controller = UsersController.new(params)
    controller.edit
end

post "/users/:id" do
    controller = UsersController.new(params, self)
    controller.update

end