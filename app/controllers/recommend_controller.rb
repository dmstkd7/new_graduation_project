class RecommendController < ApplicationController
    
    
    def recommend
        @blogs = Blog.all.reverse
    end
    
    def comment
        Comment.create(blog_id: params[:blog_id], msg: params[:comment])
        redirect_to :recommend
    end
 
    
    def write
        Blog.create(content: params[:naeyong], image: params[:image])
        redirect_to :recommend
    end
    
end
