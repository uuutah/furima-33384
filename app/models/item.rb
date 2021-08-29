class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :shopping_charges
  belongs_to :shopping_area
  belongs_to :days_to_ship

  with_options presence: true do
    validates :title, :image, :description, :category, :days_to_ship, :shopping_charges, :shopping_area, :status, :price
  end

  with_options numericality: { other_than: 1 , message: "can't be blank"} do
    validates :category, :days_to_ship, :shopping_charges, :shopping_area, :status
  end

  validates :price, format: { with: /\A[0-9]+\z/ }, length: { maximum: 299, minimum: 10000000 }

end
