class Proposition < ApplicationRecord
  belongs_to :position
  belongs_to :resource
  has_many :propositionUpdates
  
end
