class Category < ApplicationRecord

	has_many :photos

	scope :sorted, lambda { order ("category ASC") }
end
