class UsersController < ApplicationController

  def index
    @name = "I am the Index action!"
  end

  def new
    @name = "I am the New action"
  end

  def create
    
  end

  def edit
    @name = "I am the edit action"
  end

  def show
    @name = "I am the show action"
  end
end
