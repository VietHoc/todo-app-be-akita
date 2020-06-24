class CateforiesController < ApplicationController
  before_action :set_catefory, only: [:show, :update, :destroy, :todo_by_catefory]

  # GET /catefories
  def index
    @catefories = Catefory.all

    render json: @catefories
  end

  # GET /catefories/1
  def show
    render json: @catefory
  end

  # POST /catefories
  def create
    @catefory = Catefory.new(catefory_params)

    if @catefory.save
      render json: @catefory, status: :created, location: @catefory
    else
      render json: @catefory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /catefories/1
  def update
    if @catefory.update(catefory_params)
      render json: @catefory
    else
      render json: @catefory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /catefories/1
  def destroy
    @catefory.destroy
  end

  def todo_by_catefory
    byebug
    render json: @catefory.todos.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catefory
      @catefory = Catefory.find(params[:catefory_id])
    end

    # Only allow a trusted parameter "white list" through.
    def catefory_params
      params.require(:catefory).permit(:name)
    end
end
