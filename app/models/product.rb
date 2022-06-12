class Product < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { minimum: 10 }
  validates :description, length: { maximum: 500 }

  belongs_to :supplier
  has_many :images
  belongs_to :order
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  
  def is_discounted?
    price < 10
  end

  def subtotal
    price * quantity
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
