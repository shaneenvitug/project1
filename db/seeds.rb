User.destroy_all
u1 = User.create :name => 'Shaneen Vitug', :email => 'shaneenvitug@ga.co', :password => 'chicken'
u2 = User.create :name => 'Amanda Chau', :email => 'amandachau@ga.co', :password => 'chicken'
puts "#{User.count} users created"

Contact.destroy_all
c1 = Contact.create :name => 'Mark Franco', :email => 'markrfranco@gmail.com', :phone => '+61 400-079-557', :address => '17 Irwin Crescent, Bexley North, New South Wales, Australia 2207', :company => 'IAG'
c2 = Contact.create :name => 'Chris Vitug', :email => 'cvitug12@gmail.com', :phone => '+63 917-891-9431', :address => '58 Manuel Ave., Villa Gloria, Angeles City, Pampanga, Philippines 2009', :company => 'Shore360'
c3 = Contact.create :name => 'Anne Michelle Cardoso', :email => 'annemiich@gmail.com', :phone => '+1 (323) 715-0149', :address => '405 N 20th St., Montebello CA USA 90640', :company => 'Adventist Health White Memorial'
c4 = Contact.create :name => 'Alvin Cruz Vitug', :email => 'acv_911@gmail.com', :phone => '+63 917-791-2056', :address => '58 Manuel Ave., Villa Gloria, Angeles City, Pampanga, Philippines 2009', :company => 'Formula'
c5 = Contact.create :name => 'Imelda Macapinlac Vitug', :email => 'imeldita_11@yahoo.com.ph', :phone => '+63 917-560-2211', :address => '58 Manuel Ave., Villa Gloria, Angeles City, Pampanga, Philippines 2009', :company => 'Formula'
c6 = Contact.create :name => 'Bianca Marie Vitug', :email => 'bomv_22@gmail.com', :phone => '+63 927-846-1050', :address => '58 Manuel Ave., Villa Gloria, Angeles City, Pampanga, Philippines 2009', :company => 'Brightwoods'
c7 = Contact.create :name => 'Daphne Alyssa Vitug', :email => 'daphvitug_@gmail.com', :phone => '+63 927-537-2319', :address => '58 Manuel Ave., Villa Gloria, Angeles City, Pampanga, Philippines 2009', :company => 'Brightwoods'
c8 = Contact.create :name => 'Jin Zheng', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c9 = Contact.create :name => 'Kaitlyn Culmo', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c10 = Contact.create :name => 'Ana Silva', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c11 = Contact.create :name => 'Jeremy Milledge', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c12 = Contact.create :name => 'Chris Kerr', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c13 = Contact.create :name => 'Jeffrey Quan', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c14 = Contact.create :name => 'Nick Cooney', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c15 = Contact.create :name => 'Scott Williams', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c16 = Contact.create :name => 'Jessa Jimenez', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c17 = Contact.create :name => 'Kathleen Dungca', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c18 = Contact.create :name => 'Caseylyn Naguiat', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c19 = Contact.create :name => 'Marco Tiqui', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name
c20 = Contact.create :name => 'Diane Almeda', :email => Faker::Internet.email, :phone => Faker::PhoneNumber.cell_phone, :address => Faker::Address.full_address, :company => Faker::Company.name

10.times do
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
u1.contacts << c1 << c2 << c3 << c4 << c5 << c6 << c7 << c8 << c9 << c10 << c11 << c12 << c13 << c14 << c15 << c16 << c17 << c18 << c19 << c20

puts "Contacts and Groups"
g1.contacts << c1 << c2 << c4 << c5 << c6 << c7
g2.contacts << c8 << c9 << c10 << c11 << c12 << c13 << c14 << c15
g4.contacts << c3 << c16 << c17 << c18
g3.contacts << c19 << c20

# Favourite.contacts << c1
