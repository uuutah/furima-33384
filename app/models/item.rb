class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :shopping_charges
  belongs_to :shopping_area
  belongs_to :days_to_ship

  validates :shopping_area_id, numericality: { other_than: 0 , message: "can't be blank"}

  with_options presence: true do
    validates :title, :image, :description, :category_id, :days_to_ship_id, :shopping_charges_id, :shopping_area_id, :status_id, :price
  end

  with_options numericality: { other_than: 1 , message: "can't be blank"} do
    validates :category_id, :days_to_ship_id, :shopping_charges_id, :status_id
  end

  validates :price, format: { with: /\A[0-9]+\z/ }, numericality: { less_than: 10000000, greater_than: 299 }

end
