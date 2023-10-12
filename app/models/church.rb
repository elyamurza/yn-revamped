class Church < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  # am able to do a Church.near("name") to find nearby areas... implement search
end
