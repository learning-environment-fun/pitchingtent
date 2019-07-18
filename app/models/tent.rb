class Tent < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :capacity, presence: true
  validates :title, length: { minimum: 4, maximum: 255 }
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :wildlife, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

  def self.wildlife_options
    ["Bear", "Cactus", "Freddy", "Deer", "Fish", "Moose", "Raccoon", "Spider", "Squirrel", "Turkey"]
  end

  include PgSearch
  pg_search_scope :search_tents,
    against: [:title, :description, :location, :wildlife],
    using: {
      tsearch: { prefix: true }
    }
end
