class Activity < ActiveRecord::Base
  attr_accessible :name, :cost, :location_name, :address, :city, :state, :zipcode

  has_many :adventures

end
