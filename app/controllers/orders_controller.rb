class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  #autocomplete :customer , :email
  
  def index
    @orders = Order.all
  end

  def show
    #respond_with(@order)
  end

  def new
    @order = Order.new
    #to create customer and address using nested form
    @order.build_customer
    @order.build_address
    @order.line_items.build 
# <<<<<<< HEAD
    @customers = Customer.all
    @products = Product.all
    #@product_line_item = @order.product_line_items.build

# =======
    #@products = Product.order(:id)
    #@customers = Customer.order(:id)
    
# >>>>>>> 7d65d785a6f5ce1ed505785b887c7614dacf2248
  end

  def edit
  end

  def create
   #raise params.inspect
    @order = Order.new( order_params )
    @customers =Customer.all
    @products = Product.all
    #raise params.inspect
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @order.update(order_params)
     respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
    #respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  
  
  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      #raise params.inspect
        params.require(:order).permit(:order_no, :tracking_no, :delivery_date, :order_value, :is_express_delivery, :is_customer_pickup, customer_attributes:[:id , :fname, :lname, :email, :contact_no, :birthdate] , address_attributes:[:id, :permanant_addr, :office_addr, :temparary_addr, :city, :state, :country , :pin_code , :customer_id], line_items_attributes:[:id , :name, :sku, :quantity , :price])
    end
end
