class ProductsController < ApplicationController
  def index

    @items = cart if cart.present?

  end

  def add
    cart << params[:item]

    redirect_to products_index_path
  end
end
