class Planet < ApplicationRecord
  belongs_to :galaxy, optional: true
  validates :name, presence: true
end
