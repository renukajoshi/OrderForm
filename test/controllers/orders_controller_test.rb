require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { delivery_date: @order.delivery_date, instruction: @order.instruction, is_customer_pickup: @order.is_customer_pickup, is_express_delivery: @order.is_express_delivery, order_currency: @order.order_currency, order_no: @order.order_no, order_value: @order.order_value, tracking_no: @order.tracking_no }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { delivery_date: @order.delivery_date, instruction: @order.instruction, is_customer_pickup: @order.is_customer_pickup, is_express_delivery: @order.is_express_delivery, order_currency: @order.order_currency, order_no: @order.order_no, order_value: @order.order_value, tracking_no: @order.tracking_no }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
