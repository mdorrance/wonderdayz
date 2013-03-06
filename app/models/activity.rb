class Activity < ActiveRecord::Base
  attr_accessible :name, :cost, :location_name, :address, :city, :state, :zipcode, :goal_id

  validates_presence_of :name, :cost, :location_name, :address, :city, :state, :zipcode

  has_many :adventures

  belongs_to :goal
  belongs_to :family

end
