class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render :show
  end

  def new
    render :new
  end

  def create

    @cat = Cat.new(cats_params)

    if @cat.save
      redirect_to cat_url(@cat)
    else
      render :new
    end

  end

  def edit
    @cat = Cat.find_by(id: params[:id])
    render :edit
  end

  def update
  end

  def cats_params
    params.require(:cat).permit(:name, :birthdate, :color, :sex, :description)
  end

end
