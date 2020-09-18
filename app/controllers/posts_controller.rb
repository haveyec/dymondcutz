class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:title, :body, :userID)
    end

    def new
    	@post = current_user.post.build
    	
    end

    def create
    	@post = current_user.post.build(post_params)
    	
    end

end
