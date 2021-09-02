class ProductsController < ApplicationController

  def index
    products = Product.all
    render json: products
  end

  def show
    product = Product.find(params[:id])
    render json: product
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    product.save
    render json: product
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.images = params[:image] || product.images
    product.supplier_id = params[:supplier_id] || product.supplier_id
    product.save
    render json: product
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "This product has been deleted"}
  end

end
