class City < ActiveRecord::Base
  has_many :restaurants
  has_many :theaters
end
