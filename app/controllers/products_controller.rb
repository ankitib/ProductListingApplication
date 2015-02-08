class ProductsController < ApplicationController
  respond_to :html, :js
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    handle_rendering
  end

  def new
    @product = Product.new
    handle_rendering
  end

  def create
    @products = Product.all
    @product = Product.create(product_params)
    handle_rendering
  end

  def edit
    @product = Product.find(params[:id])
    handle_rendering
  end

  def update
    @products = Product.all
    @product = Product.find(params[:id])
    
    @product.update_attributes(product_params)
    handle_rendering
  end

  def delete
    @product = Product.find(params[:product_id])
    handle_rendering
  end

  def destroy
    @products = Product.all
    @product = Product.find(params[:id])
    @product.destroy
    handle_rendering
  end

private
  def product_params
    params.require(:product).permit(:name, :price,:description)
  end

  def handle_rendering
    respond_to do |f|
      f.html { render nothing: true } 
      f.js
    end
  end
end