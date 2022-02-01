class UsersController < AbstractController
    def new
        @user = User.all
        render ("users/new")
    end

    def index
        @users = User.all
        render("users/index")
    end

    def create
        name = params["name"]
        email = params["email"]

        last_id = User.create(name, email)

        http.redirect("/users/#{last_id}")

    end

    def edit
        @user = User.find(params["id"])
        render("users/edit")
    
    end

    def show
        @user = User.find(params["id"])
        render("users/show")

    end

    def update
        id = params["id"]
        name = params["name"]
        email = params["email"]

        User.update(id, name, email)

        http.redirect("/users/#{id}")

    end

    def delete
        id = params["id"]

        User.delete(id)

        http.redirect("/users")
    
    
    end

end