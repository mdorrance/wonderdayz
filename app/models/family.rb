class Family < ActiveRecord::Base
  attr_accessible :family_crest_id, :tribe_name

  belongs_to :family_crest
  has_many :adventures
  has_many :people
end
