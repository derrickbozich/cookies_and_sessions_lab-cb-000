class ProductsController < ApplicationController
  def index

    @items = cart if cart.present?

  end

  def add
    if condition
      cart << params[:item]
      redirect_to products_index_path
    else
      
    end
    
  end
end
