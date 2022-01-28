class UsersController < AbstractController
    def new
        @user = User.all
        render ("users/new")
    end

    def index
    end

    def create
        name = params["name"]
        email = params["email"]

        last_id = User.create(name, email)

        http.redirect("/users/#{last_id}")

    end

    def show
        @user = User.find(params["id"])
        render("users/show")

    end

end