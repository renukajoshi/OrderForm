class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    #@products = @order.products
    #respond_with(@orders)
  end

  def show
    #respond_with(@order)
  end

  def new
    @order = Order.new
    @order.build_customer
    @order.build_address
    @order.lineitems.build

    @customers = Customer.all
    #raise @customers.inspect
    for @customer.each do 
      if cust.email.exist?
        @addresses = Address.all
      else
      end
    end
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
  
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
      params.require(:order).permit(:order_no, :tracking_no, :delivery_date, :order_value, :order_currency, :instruction, :is_express_delivery, :is_customer_pickup, customer_attributes:[:id , :fname, :lname, :email, :contact_no, :birthdate], lineitems_attributes:[:id, :name, :sku, :quantity, :price])
    end

    
end
