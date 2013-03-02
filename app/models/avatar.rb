class Avatar < ActiveRecord::Base
  attr_accessible :name, :image_url

  has_many :people
end
