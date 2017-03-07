class Position < ApplicationRecord
  belongs_to :contact
  belongs_to :positionStatus
  has_many :propositions
end
