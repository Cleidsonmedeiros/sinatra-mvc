class PostsController < AbstractController
    def new
        @post = Post.all
        render ("posts/new")
    end

end