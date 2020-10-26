class Game < ApplicationRecord
  has_many :matches

  validates :title, :icon, presence: true
end
