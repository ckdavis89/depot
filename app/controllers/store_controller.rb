class StoreController < ApplicationController
  include SessionCounter
  before_action :session_counter

  def index
    @products = Product.order(:title)
  end
end
