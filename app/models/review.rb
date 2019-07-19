class Review < ApplicationRecord
  belongs_to :tent
  belongs_to :user
  validates :contents, length: { minimum: 20, maximum: 150 }
end
