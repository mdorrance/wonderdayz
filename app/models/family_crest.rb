class FamilyCrest < ActiveRecord::Base
  attr_accessible :crest_id, :family_id

  belongs_to :crest
  belongs_to :family

end
