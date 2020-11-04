class CartItemsController < ApplicationController
  def new
    @product_id = params[:product_id] 
  end
  
  def create
    logger.debug "-----------"
    c = CartItem.new(product_id: params[:product_id], cart_id: current_cart.id, qty: params[:qty])
    c.save
    logger.debug c.errors.full_messages
    redirect_to cart_path(current_cart.id)
  end

  def destroy
    cartitem = CartItem.find(params[:id])
    cartitem.destroy
    redirect_to cart_path(current_cart.id)
  end
end
