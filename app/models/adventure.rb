class Adventure < ActiveRecord::Base
  attr_accessible :activity_id, :family_id, :name, :tips

  belongs_to :activity
  belongs_to :family
  has_many :reviews, :through => :family


end

