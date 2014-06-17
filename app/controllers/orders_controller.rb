class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end
  
  def sorry
  end

  # GET /users/new
  def new
    @order = Order.new
    @packages = ['1 one-to-one private lesson - $50', '1 two-to-one private lesson - $80', '1 four-to-one group lesson - $100']
    @topics = ["Chinese", "English", "French", "Korean"]
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to soldout_path }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :class_type, :address, :number, :email, :start_date, :start_time, :topic)
    end
end
