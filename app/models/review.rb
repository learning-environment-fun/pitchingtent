class Review < ApplicationRecord
  belongs_to :tent
  belongs_to :user
  validates :content, length: { minimum: 2, maximum: 150 }
end
