class PostsController < ApplicationController
    def index
        @all_posts = Post.order(created_at: :desc).all
    end


    def new
        @new_post = Post.new
        @all_posts = Post.order(created_at: :desc).all
    end


    def create
        @new_post = Post.new(posts_params)
        if @new_post.save
            redirect_to root_path
        end
    end


    def update
        @post = Post.update(params[:id], title:body[:title], body:body[:body])
    end


    def delete
        @post = Post.find(params[:id])
        @post = Post.destroy
    end

    
    private
    def posts_params
        params.require(:post).permit(:title, :body, :created_at)
    end
end
