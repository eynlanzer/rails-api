class Premise < ApplicationRecord
  belongs_to :user
  has_many :stations

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
end
