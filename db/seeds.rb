# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
goals =[
  {:name => "Play in Park"},
  {:name => "1 Mile Hike"},
  {:name => "5 Mile Bike"},
  {:name => "Swim in Lake"},
  {:name => "Cook on Fire"},
  {:name => "Camp Overnight"}

]

  Goal.destroy_all
  goals.each do |goal_hash|
    g = Goal.new
    g.name = goal_hash[:name]
    g.save
  end

puts "#{Goal.count} Goals created - should be 7"


  crests = [
  {:name => "Jedi"},
  {:name => "Potter"}
]

Crest.destroy_all
crests.each do |crest_hash|
  c = Crest.new
  c.name = crest_hash[:name]
  c.save
end

puts "#{Crest.count} crests created - should be 2"

families = [
  {:tribe_name => "The Wizards" },
  {:tribe_name => "The Skywalkers"}
]

Family.destroy_all
families.each do |family_hash|
  f = Family.new
  f.tribe_name = family_hash[:tribe_name]

  f.save
end

puts "#{Family.count} Families created - should be 2"

family_crests = [
  {:crest_id => Crest.find_by_name("Jedi").id, :family_id => Family.find_by_tribe_name("The Skywalkers").id},
  {:crest_id => Crest.find_by_name("Potter").id, :family_id => Family.find_by_tribe_name("The Wizards").id}
]

FamilyCrest.destroy_all
family_crests.each do |family_crest_hash|
   fc = FamilyCrest.new
   fc.crest_id = family_crest_hash[:crest_id]
   fc.family_id = family_crest_hash[:family_id]
   fc.save
   end

activities = [
  {:name => "Hiking", :cost => 0, :location_name => "Land of Oz", :address => "1234 Yellow Brick Rd", :city => "Munchkinville", :state => "Oz", :zipcode => "12345", :goal_id => Goal.find_by_name("1 Mile Hike").id},
  {:name => "Camping", :cost => 0, :location_name => "Land of Oz", :address => "1234 Yellow Brick Rd", :city => "Munchkinville", :state => "Oz", :zipcode => "12345", :goal_id => Goal.find_by_name("Camp Overnight").id},
  {:name => "Cooking", :cost => 0, :location_name => "Land of Oz", :address => "1234 Yellow Brick Rd", :city => "Munchkinville", :state => "Oz", :zipcode => "12345", :goal_id => Goal.find_by_name("Cook on Fire").id},
  {:name => "Biking", :cost => 0, :location_name => "Land of Oz", :address => "1234 Yellow Brick Rd", :city => "Munchkinville", :state => "Oz", :zipcode => "12345", :goal_id => Goal.find_by_name("5 Mile Bike").id},
  {:name => "Swimming", :cost => 0, :location_name => "Land of Oz", :address => "1234 Yellow Brick Rd", :city => "Munchkinville", :state => "Oz", :zipcode => "12345", :goal_id => Goal.find_by_name("Swim in Lake").id},
  {:name => "Explore Park", :cost => 0, :location_name => "Dagobah", :address => "1234 Swamp", :city => "Middle of Nowhere", :state => "Yoda", :zipcode => "12345", :goal_id => Goal.find_by_name("Play in Park").id}
]

puts "#{FamilyCrest.count} Family crests created - should be 2"



Activity.destroy_all
activities.each do |activity_hash|
  a = Activity.new
  a.name = activity_hash[:name]
  a.cost = activity_hash[:cost]
  a.location_name = activity_hash[:location_name]
  a.address = activity_hash[:address]
  a.city = activity_hash[:city]
  a.state = activity_hash[:state]
  a.zipcode = activity_hash[:zipcode]
  a.save
end

puts "#{Activity.count} Activities created - should be 2"

adventures = [
  {:name => "The Yellow Brick Road", :activity_id => Activity.find_by_name("Hiking").id, :family_id => Family.find_by_tribe_name("The Wizards").id, :tips => "Beware of Flying Monkeys" },
  {:name => "Jedi Training", :activity_id => Activity.find_by_name("Swimming").id, :family_id => Family.find_by_tribe_name("The Skywalkers").id, :tips => "Bring a change of clothes" }
]
Adventure.destroy_all
adventures.each do |adventure_hash|
  ad = Adventure.new
  ad.name = adventure_hash[:name]
  ad.activity_id = adventure_hash[:activity_id]
  ad.family_id = adventure_hash[:family_id]
  ad.tips = adventure_hash[:tips]
  ad.save
end

puts "#{Adventure.count} Adventures created - should be 2"



avatars = [
  {:name => "Wizards", :image_url => "www.wwww"},
  {:name => "Starwars", :image_url => "www.wwwwww"}
]
Avatar.destroy_all
  avatars.each do |avatar_hash|
    av = Avatar.new
    av.name = avatar_hash[:name]
    av.image_url = avatar_hash[:image_url]
    av.save
end

puts "#{Avatar.count} Avatars created - should be 2"

awards = [
  {:name => "Lightsaber"},
  {:name => "Rat tail"},
  {:name => "Little Dog"},
  {:name => "Ruby Slippers"}
]

Award.destroy_all
  awards.each do |award_hash|
    aw = Award.new
    aw.name = award_hash[:name]
    aw.save
end

puts "#{Award.count} Awards created - should be 4"


import_people =[
  {:trail_name => "The Oz", :age => "15", :gender => "male", :role => "son", :email => "moms@email.com", :family_id => Family.find_by_tribe_name("The Wizards").id, :password => "1234" },
  {:trail_name => "Dorthy", :age => "17", :gender => "female", :role => "daughter", :email => "moms@email.com", :family_id => Family.find_by_tribe_name("The Wizards").id, :password => "1234" },
  {:trail_name => "Toto", :age => "5", :gender => "male", :role => "son", :email => "moms@email.com", :family_id => Family.find_by_tribe_name("The Wizards").id, :password => "1234" },
  {:trail_name => "Witch", :age => "35", :gender => "female", :role => "mom", :email => "moms@email.com", :family_id => Family.find_by_tribe_name("The Wizards").id, :password => "1234" },
  {:trail_name => "Tin Man", :age => "35", :gender => "male", :role => "father", :email => "dadss@email.com", :family_id => Family.find_by_tribe_name("The Wizards").id, :password => "1234" },
  {:trail_name => "Darth Vader", :age => "45", :gender => "male", :role => "father", :email => "deathstar@email.com", :family_id => Family.find_by_tribe_name("The Skywalkers").id, :password => "1234" },
  {:trail_name => "Luke", :age => "10", :gender => "male", :role => "son", :email => "deathstar@email.com", :family_id => Family.find_by_tribe_name("The Skywalkers").id, :password => "1234" },
  {:trail_name => "Lea", :age => "1o", :gender => "female", :role => "daughter", :email => "deathstar@email.com", :family_id => Family.find_by_tribe_name("The Skywalkers").id, :password => "1234"},
  {:trail_name => "Padme", :age => "49", :gender => "female", :role => "mother", :email => "deathstar@email.com", :family_id => Family.find_by_tribe_name("The Skywalkers").id, :password => "1234" }
]

Person.destroy_all
import_people.each do |person_hash|
  p = Person.new
  p.trail_name = person_hash[:trail_name]
  p.age = person_hash[:age]
  p.gender = person_hash[:gender]
  p.role = person_hash[:role]
  p.email = person_hash[:email]
  p.family_id = person_hash[:family_id]
  p.password = person_hash[:password]
  p.save
end

puts "#{Person.count} People created - should be 9"

personal_blogs = [
  {:blog => "I am the man in the Emerald City", :person_id => Person.find_by_trail_name("The Oz").id },
  {:blog => "I really miss my parents", :person_id => Person.find_by_trail_name("Dorthy").id },
  {:blog => "The food is horrible here. I am starving", :person_id => Person.find_by_trail_name("Toto").id },
  {:blog => "I miss the woods, but not the rust", :person_id => Person.find_by_trail_name("Tin Man").id },
  {:blog => "I hate water so please do not ask if I want any.", :person_id => Person.find_by_trail_name("Witch").id },
  {:blog => "I can feel the hate within. Why me?", :person_id => Person.find_by_trail_name("Darth Vader").id },
  {:blog => "I am awesome and this Jedi stuff is so easy!", :person_id => Person.find_by_trail_name("Luke").id },
  {:blog => "Han is so cute! I just can't stand him though.", :person_id => Person.find_by_trail_name("Lea").id },
  {:blog => "Oh, how I miss being the Queen.", :person_id => Person.find_by_trail_name("Padme").id }
]

PersonalBlog.destroy_all
  personal_blogs.each do |personal_blog_hash|
    pb= PersonalBlog.new
    pb.blog = personal_blog_hash[:blog]
    pb.person_id = personal_blog_hash[:person_id]
    pb.save
  end

puts "#{PersonalBlog.count} p blogs created - should be 9"



family_blogs = [
  {:blog => "Being Wizards", :activity_id => Activity.find_by_name("Hiking").id, :family_id => Family.find_by_tribe_name("The Wizards").id },
  {:blog => "Being Skywalkers", :activity_id => Activity.find_by_name("Swimming").id, :family_id => Family.find_by_tribe_name("The Skywalkers").id }
]

FamilyBlog.destroy_all
  family_blogs.each do |family_blog_hash|
    fb= FamilyBlog.new
    fb.blog = family_blog_hash[:blog]
    fb.family_id = family_blog_hash[:family_id]
    fb.save
  end

puts "#{FamilyBlog.count} F Blogs created - should be 2"

reviews = [
  {:good => "It was so much fun!", :bad => "I got tired.", :person_id => Person.find_by_trail_name("The Oz").id, :adventure_id => Adventure.find_by_name("The Yellow Brick Road").id },
  {:good => "It was awesome!", :bad => "I got tired.", :person_id => Person.find_by_trail_name("Dorthy").id, :adventure_id => Adventure.find_by_name("The Yellow Brick Road").id },
  {:good => "So much fun!", :bad => "I got tired.", :person_id => Person.find_by_trail_name("Toto").id, :adventure_id => Adventure.find_by_name("The Yellow Brick Road").id },
  {:good => "Fun!", :bad => "I got tired.", :person_id => Person.find_by_trail_name("Tin Man").id, :adventure_id => Adventure.find_by_name("The Yellow Brick Road").id },
  {:good => "Time with Mom", :bad => "I got tired.", :person_id => Person.find_by_trail_name("Witch").id, :adventure_id => Adventure.find_by_name("The Yellow Brick Road").id },
  {:good => "Time with Dad!", :bad => "I got tired.", :person_id => Person.find_by_trail_name("Darth Vader").id, :adventure_id => Adventure.find_by_name("Jedi Training").id },
  {:good => "Yeah!", :bad => "I got tired.", :person_id => Person.find_by_trail_name("Luke").id, :adventure_id => Adventure.find_by_name("Jedi Training").id },
  {:good => "Great!", :bad => "I got tired.", :person_id => Person.find_by_trail_name("Lea").id, :adventure_id => Adventure.find_by_name("Jedi Training").id },
  {:good => "Cool!", :bad => "I got tired.", :person_id => Person.find_by_trail_name("Padme").id, :adventure_id => Adventure.find_by_name("Jedi Training").id }
]

Review.destroy_all
reviews.each do |review_hash|
  r = Review.new
  r.good = review_hash[:good]
  r.bad = review_hash[:bad]
  r.person_id = review_hash[:person_id]
  r.adventure_id = review_hash[:adventure_id]
  r.save
end

puts "#{Review.count} Reviews created - should be 9"






person_awards = [
  {:award_id => Award.find_by_name("Lightsaber").id, :person_id => Person.find_by_trail_name("Darth Vader").id},
  {:award_id => Award.find_by_name("Rat tail").id, :person_id => Person.find_by_trail_name("Luke").id},
  {:award_id => Award.find_by_name("Rat tail").id, :person_id => Person.find_by_trail_name("Lea").id},
  {:award_id => Award.find_by_name("Lightsaber").id, :person_id => Person.find_by_trail_name("Padme").id},
  {:award_id => Award.find_by_name("Ruby Slippers").id, :person_id => Person.find_by_trail_name("The Oz").id},
  {:award_id => Award.find_by_name("Ruby Slippers").id, :person_id => Person.find_by_trail_name("Dorthy").id},
  {:award_id => Award.find_by_name("Little Dog").id, :person_id => Person.find_by_trail_name("Toto").id},
  {:award_id => Award.find_by_name("Little Dog").id, :person_id => Person.find_by_trail_name("Tin Man").id},
  {:award_id => Award.find_by_name("Ruby Slippers").id, :person_id => Person.find_by_trail_name("Witch").id}
]

PersonAward.destroy_all
person_awards.each do |person_award_hash|
  pa = PersonAward.new
  pa.award_id = person_award_hash[:award_id]
  pa.person_id = person_award_hash[:person_id]
  pa.save
end

puts "#{PersonAward.count} Person Awards created - should be 9"











enlightenments = [
  {:adventure_id => Adventure.find_by_name("The Yellow Brick Road").id, :goal_id => Goal.find_by_name("1 Mile Hike").id },
  {:adventure_id => Adventure.find_by_name("Jedi Training").id, :goal_id => Goal.find_by_name("Swim in Lake").id }
]

Enlightenment.destroy_all
enlightenments.each do |enlightment_hash|
  e = Enlightenment.new
  e.adventure_id = enlightment_hash[:adventure_id]
  e.goal_id = enlightment_hash[:goal_id]
  e.save
end

puts "#{Enlightenment.count} enlightenments created - should be 2"
