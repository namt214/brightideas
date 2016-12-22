class PostsController < ApplicationController
  def index
    @user = User.find(current_user)
  	@posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  	@likes = Like.where(post_id:params[:id])
  end
  def create
    @post = Post.new(content:params[:content], user:current_user)
  	if @post.valid?
  		@post.save
  		redirect_to "/posts/"
  	else
  		flash[:errors] = @post.errors.full_messages
  		redirect_to "/posts/#{@user.id}"
  	end
  end
  def destroy
  	post = Post.find(params[:id])
  	post.destroy if post.user == current_user
  	redirect_to "/users/#{current_user.id}"
  end
end
