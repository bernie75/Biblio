class Book < ApplicationRecord
  belongs_to :reservations, required: true
  validates :title, presence: true
  validates :author, presence: true

  scope :available, -> { where(available: true) }

  def available?
    available
  end

end
