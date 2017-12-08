class Category < ApplicationRecord
  has_many :items

  validates_presence_of :name
  validates_presence_of :category_slug
  validates_uniqueness_of :category_slug

  def to_param
    category_slug
  end
end
