class Crest < ActiveRecord::Base
  attr_accessible :name

  has_many :family_crests
  has_many :families, :through => :family_crest
end
