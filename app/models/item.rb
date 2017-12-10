class Item < ApplicationRecord
  belongs_to :category

  def to_param
    slug
  end
end
