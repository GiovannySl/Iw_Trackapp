class Track < ApplicationRecord
  belongs_to :user
  validates :start, presence: true
end
