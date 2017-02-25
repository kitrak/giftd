class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    puts 'we are here'
  end
end