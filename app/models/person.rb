class Person < ActiveRecord::Base
  attr_accessible :age, :trail_name, :family_id, :gender, :role, :avatar_id, :email, :password, :password_confirmation, :family_name

  belongs_to :family
  belongs_to :avatar
  has_many :reviews



  has_many :personal_blogs

  has_secure_password


end
