class Item < ApplicationRecord
  belongs_to :category

  validates_presence_of :name
  validates_presence_of :price
  validates_numericality_of :price
  validates_presence_of :description
  validates_presence_of :item_slug
  validates_uniqueness_of :item_slug

  def to_param
    item_slug
  end
end
