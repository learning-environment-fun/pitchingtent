class TentsController < ApplicationController
  # Verify User; before action and then skip as needed (Index/Show/New)
  skip_before_action :authenticate_user!, only: [:show, :index, :new]

  def index
    @tents = Tent.all
  end

  def show
    @tent = Tent.find(params[:id])
  end

  def new
    @tent = Tent.new
  end

  def create
    wildlife = params.require(:tent)["wildlife"][1..-1].join(", ")
    @tent = Tent.new(tent_params)
    @tent.wildlife = wildlife
    @tent.user = current_user
    if @tent.save
      redirect_to tent_path(@tent)
    else
      puts @tent
      render :new
    end
  end

  def destroy
  end

  def update
    # @tent = Tent.find(params[:id])
    # create
  end

  def edit
  end

  private
  
  # Validation to allow name and nothing else into the form
  def tent_params
    params.require(:tent).permit(:title, :capacity, :description, :location, :price, :wildlife, :photo)
  end
end
