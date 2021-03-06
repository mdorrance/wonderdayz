class Award < ActiveRecord::Base
  attr_accessible :name

  has_many :person_awards
  has_many :people, :through => :person_award
end
