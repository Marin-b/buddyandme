class ProfileController < ApplicationController
  def show
    @user = current_user
    @friend = @user.friend
  end
end
