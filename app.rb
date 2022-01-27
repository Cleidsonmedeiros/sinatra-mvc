require "sinatra"
require "sqlite3"

Dir["./app/**/*.rb"].each { |file| require file }

get "/users/new" do
    controller = UsersController.new(params)
    controller.new
end

post "/users" do
    controller = UsersController.new(params)
    controller.create
    
end

get "/users" do
    controller = UsersController.new(params)
    controller.index
end

get "/users" do
    controller = UsersController.new(params)
end