class UsersController < ApplicationController
  before_action :authenticate_user!

  def wants
    @user = User.find(params[:id])
    puts 'here are this users wants'
  end
end