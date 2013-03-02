class PersonAward < ActiveRecord::Base
  attr_accessible :award_id, :person_id

  belongs_to :award
  belongs_to :person

end
