class ProductsController < ApplicationController
  def index

    @items = cart if cart

  end

  def add
    cart << params[:item]
    
    render :index
  end
end
