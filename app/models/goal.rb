class Goal < ActiveRecord::Base
  attr_accessible :name

  has_many :enlightenments
end
