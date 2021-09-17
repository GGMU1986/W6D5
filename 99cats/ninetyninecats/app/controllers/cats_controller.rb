class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def new
  end

  def show
  end
end
