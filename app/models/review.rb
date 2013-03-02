class Review < ActiveRecord::Base
  attr_accessible :bad, :good, :person_id, :adventure_id

  belongs_to :person
  belongs_to :adventure

end
