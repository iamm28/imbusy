class FriendsController < ApplicationController
  def index
    current_user = User.find(params[:id])
    @friends = current_user.friends
  end

  def destroy
    current_user = User.find(params[:id])
    current_user.remove_friend(@friend)
    head :no_content
  end

  private

  def set_friend
    current_user = User.find(params[:id])
    @friend = current_user.friends.find(params[:id])
  end

end
