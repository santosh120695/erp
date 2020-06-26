namespace :fakeseeddata do

  task generate_data: :environment do
    User.destroy_all
    #Generate Users
    User.create!(first_name:"Rushabh",last_name:"Hathi",employee_id:"110011",email:"rushabh@linkwok.com",password:"1linkwok@",password_confirmation:"1linkwok@")

    #Generate Customers
    Customer.destroy_all
    10.times do |i|
      Customer.create!(name:Faker::Company.name,email: Faker::Internet.email,address: Faker::Address.full_address,gst_no:Faker::Company.duns_number,phone:Faker::PhoneNumber.cell_phone_in_e164)
    end
    #Generate Products
    Product.destroy_all
    100.times do |i|
      Product.create!(name:Faker::Name.name,code: Faker::Code.isbn ,dimension: "33x99x124",finish:Faker::Name.female_first_name,notes:Faker::Lorem.paragraph,packing_size:rand(500).to_s,cbm:rand(500).to_s,cost:rand(5000000),range:"Range")
    end

  #  Generate Raw Materials
    RawMaterialPrice.destroy_all
    RawMaterial.destroy_all

    50.times do |i|
      rm = RawMaterial.create!(name: Faker::Name.name,material_type:Faker::Name.name)
      10.times do |j|
        RawMaterialPrice.create!(:raw_material_id => rm.id,price:rand(10000),price_date:Date.today-(rand(10).days))
      end
    end

  #  Generate cost heads
    ["Labour Cost","Transport Cost","Tax","Utilities"].each do |n|
    CostHead.create!(name:n)
    end
  #  Create order details
    OrderDetail.destroy_all
    50.times do
      OrderDetail.create!(:product_id=> Product.pluck(:id)[rand(90)],code:SecureRandom.hex(6),quantity: rand(1000),program:"ABC",delivery_week: rand(50))
    end

    #


  end
end
