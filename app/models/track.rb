class Track < ActiveRecord::Base
  has_many :races
  has_many :drivers, through: :races
end