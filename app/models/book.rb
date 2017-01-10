class Book < ApplicationRecord
  has_many :reservations
  validates :title, presence: true
  validates :author, presence: true
end
