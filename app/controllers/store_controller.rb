class StoreController < ApplicationController
  include CurrentCart, SessionCounter
  before_action :set_cart, :session_counter

  def index
    @products = Product.order(:title)
  end
end
