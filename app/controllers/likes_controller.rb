class LikesController < ApplicationController
  def create
    post = Post.find(params['post_id'])
    like = Like.create(user: current_user, post: post)
		redirect_to "/posts/#{current_user.id}"
  end
end
