class PostsController < AbstractController
    def new
        @post = Post.all
        render ("posts/new")
    end

    def create
        title =[params="title"]
        content =[params="content"]

        Post.create(title, content)

        @posts = Post.all
        render("Posts/index")
    end

end