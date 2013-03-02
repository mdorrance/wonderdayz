class Review < ActiveRecord::Base
  attr_accessible :bad, :good, :person_id

  belongs_to :person
end
