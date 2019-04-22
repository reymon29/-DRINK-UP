class Review < ApplicationRecord
 belongs_to :post
 validates :likeness, :tasteness, :recommend, numericality: true
end
