class Category < ApplicationRecord
  has_many :items

  def to_param
    slug
  end
end
