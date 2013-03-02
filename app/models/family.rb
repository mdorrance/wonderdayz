class Family < ActiveRecord::Base
  attr_accessible :tribe_name

  has_many :family_crests
  has_many :adventures
  has_many :people

 # belongs_to :crest, :through => :family_crest
end
