class ProfilesController < ApplicationController

  def show
    @profile = current_user.profile
  end

  def edit
  end

  def update
    redirect_to "/users/#{current_user.id}"
  end

  def profile
  end

  def create
    @profile = Profile.new(name: params[:name], address: params[:address], number_of_children: params[:number_of_children], ages_of_children: params[:number_of_children], user_id: current_user.id)
    @profile.save
    redirect_to "/profiles/#{@profile.id}"
  end

  def new
  end
end


