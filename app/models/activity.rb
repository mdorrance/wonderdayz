class Activity < ActiveRecord::Base
  attr_accessible :name, :cost, :location_name, :address, :city, :state, :zipcode, :goal_id

  validates_presence_of :name, :cost, :location_name, :address, :city, :state, :zipcode

  has_many :adventures
  has_many :families, through: :adventures
  belongs_to :goal
  has_many :reviews, through: :adventures

  def Activity.test_method
    puts "test works"
  end


  def Activity.age_filter(age)
    activity_array =[]
    age = age.to_i
    Activity.all.each do |activity|
      age_match == false
      activity.reviews.each do |review|
        if review.person.age == age
          age_match = true
        end
      end
        if age_match == true
          activity_array << activity
        end
    end
    return activity_array
  end

end
