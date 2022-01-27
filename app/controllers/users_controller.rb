class UsersController < AbstractController
    def new
        @user = User.all
        render ("users/new")
    end

    def create
        name = params["name"]
        email = params["email"]

        User.create(name, email)

        @users = User.all
        render("users/index")

    end

end