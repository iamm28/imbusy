class Api::V1::InvitesController < ApplicationController

def index
  @invites = Invite.all
  render json: @invites
end

def create
  @invite = Invite.create(invite_params)
  render json: @invite, status: 201
end

def new
  @invite = Invite.new
end

# def edit
#   @invite = Invite.find(params[:id])
# end
#
# def update
#   @invite = Invite.find(params[:id])
#   @invite.update(invite_params)
#   @invite.save
#   render json: @invite
# end

def show
  @invite = Invite.find(params[:id])
  render json: @invite, status: 200
end

def destroy
  @invite = Invite.find(params[:id])
  @invite.destroy
  render json: {message:"Invite Deleted"}
end

private
  def invite_params
    params.require(:invite).permit(:user_id, :event_id)
  end

end
