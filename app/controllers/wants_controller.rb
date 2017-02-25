class WantsController < ApplicationController
  def new

  end

  def create
    # create the product and add to products table
    # add it to the current_users wants as well.
    # redirect to the user's wants page but display a message saying the want was added.
    redirect_to :root
  end
end