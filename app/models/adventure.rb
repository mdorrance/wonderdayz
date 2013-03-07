class Adventure < ActiveRecord::Base
  attr_accessible :activity_id, :family_id, :name, :tips, :person_id

  validates_presence_of :activity_id, :name, :tips
  belongs_to :family
  belongs_to :activity
  belongs_to :person
  has_many :reviews
  # belongs_to :family, :through => :person
  # has_many :reviews, :through => :family


end

