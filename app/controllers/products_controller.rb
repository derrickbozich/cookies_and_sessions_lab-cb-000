class ProductsController < ApplicationController
  def index

    @items = cart if cart.present?

  end

  def add
    if params[:product].present?
      cart << params[:product]
      redirect_to products_index_path
    end

  end
end
