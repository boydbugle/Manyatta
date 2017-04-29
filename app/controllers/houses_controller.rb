class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]
  before_filter :must_login?, only: [:new, :edit, :destroy]
  # GET /houses
  def index
    @houses = House.all
  end

  # GET /houses/1
  def show
  end

  # GET /houses/new
  def new
    @house = current_user.houses.new
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  def create
    @house = current_user.houses.new(house_params)

    if @house.save
      redirect_to @house, notice: 'House was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /houses/1
  def update
    if @house.update(house_params)
      redirect_to @house, notice: 'House was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /houses/1
  def destroy
    @house.destroy
    redirect_to houses_url, notice: 'House was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def house_params
      params.fetch(:house).permit(:name, :description, :telephone, :street, :rules, :ammenities, :price)
    end
end
