class ProductsController < ApplicationController
  def index

    @items = cart if cart.present?

  end

  def add
    if params[:item].present?
      cart << params[:item]
      redirect_to products_index_path
    end

  end
end
