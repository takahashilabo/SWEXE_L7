class CartsController < ApplicationController
  def show
    @cart = Cart.find(current_cart.id)
  end
end
