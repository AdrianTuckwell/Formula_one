class Race < ActiveRecord::Base
  belongs_to :driver
  belongs_to :track
end
