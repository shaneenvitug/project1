User.destroy_all
u1 = User.create :name => 'Shaneen Vitug', :email => 'shaneenvitug@ga.co', :password => 'chicken', :is_female => 1, :dob => '1991-12-08'
u2 = User.create :name => 'Amanda Chau', :email => 'amandachau@ga.co', :password => 'chicken', :is_female => 1
puts "#{User.count} users created"

Contact.destroy_all
c1 = Contact.create :name => 'Mark Franco', :email => 'markrfranco@gmail.com', :phone => 61400079557, :address => '17 Irwin Crescent, Bexley North, New South Wales, Australia 2207', :company => 'IAG'
c2 = Contact.create :name => 'Chris Vitug', :email => 'cvitug12@gmail.com', :phone => 639178919431, :address => '58 Manuel Ave., Villa Gloria, Angeles City, Pampanga, Philippines 2009', :company => 'Shore360'
c3 = Contact.create :name => 'Anne Michelle Cardoso', :email => 'annemiich@gmail.com', :phone => 3237150149, :address => '405 N 20th St., Montebello CA USA 90640'
20.times do
  Contact.create(:name => Faker::Name.name, :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name)
end
puts "#{Contact.count} contacts created"

Group.destroy_all
g1 = Group.create :name => 'Family'
g2 = Group.create :name => 'SEI34'
g3 = Group.create :name => 'Work'
g4 = Group.create :name => 'Friends'
puts "#{Group.count} groups created"

# Associations
puts "Contacts and Users"
u1.contacts << c1 << c2 << c3

puts "Contacts and Groups"
g1.contacts << c1 << c2
g4.contacts << c3
