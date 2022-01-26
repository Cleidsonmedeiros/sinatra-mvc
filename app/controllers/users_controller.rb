class UsersController < AbstractController
    def new
        @user = User.all
        render ("users/new")
    end

    def create
        require "pry"; binding.pry

    end

end