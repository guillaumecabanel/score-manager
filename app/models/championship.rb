class Championship < ApplicationRecord
  has_many :matches, dependent: :destroy

  validates :title, presence: true
end
