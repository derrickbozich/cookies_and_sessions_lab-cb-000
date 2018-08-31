class ProductsController < ApplicationController
  def index
    
    @items = cart

  end

  def add
    cart << params[:item]
    binding.pry
    render :index
  end
end
