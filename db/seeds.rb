# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Producer.create(:name => "Highland Park")
p2 = Producer.create(:name => "Laphroaig")

w1 = Whisky.create(:region => "Islay", :ABV => 43.00, :country => "Scotland", :age => "10", :producer => p1)
w2 = Whisky.create(:region => "Orkney", :ABV => 54.00, :country => "Scotland", :age => "18", :producer => p2)

u1 = User.create(:email => "mattheyj@gmail.com", :first_name => "Jonathan")

fw1 = FlavourWheel.create(  :linger=> 1,  :heat_proof=> 1,  :dark_fruit=> 1,  :citrus_punch=> 1,  :floral=> 1,  :spicy=> 1,  :herbal=> 1,  :malty=> 1,  :toffee=> 1,  :woody=> 1,  :tannic=> 1,  :char=> 1,  :sweet=> 1,  :body=> 1,  :legs=> 1,  :balance=> 1  )
fw2 = FlavourWheel.create(  :linger=> 2,  :heat_proof=> 2,  :dark_fruit=> 2,  :citrus_punch=> 2,  :floral=> 2,  :spicy=> 2,  :herbal=> 2,  :malty=> 2,  :toffee=> 2,  :woody=> 2,  :tannic=> 2,  :char=> 2,  :sweet=> 2,  :body=> 2,  :legs=> 2,  :balance=> 2  )

t1 = TastingNote.create(:notes => "very very fucking peaty !", :whisky => w1, :user => u1, :flavour_wheel => fw1, :rating => 4, :date => Time.now)
t2 = TastingNote.create(:notes => "smoooooth !", :whisky => w2, :user => u1, :flavour_wheel => fw2,:rating => 3, :date => Time.now)

