class Theater < ActiveRecord::Base
  belongs_to :city
  has_many :shows
end
