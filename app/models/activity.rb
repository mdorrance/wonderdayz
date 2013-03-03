class Activity < ActiveRecord::Base
  attr_accessible :name, :cost, :location_name, :address, :city, :state, :zipcode

  validates_presence_of :name, :cost, :location_name, :address, :city, :state, :zipcode

  has_many :adventures

end
