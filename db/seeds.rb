ActiveRecord::Base.transaction do
  salesmen  = FactoryGirl.create_list(:salesman, 10)
  customers = FactoryGirl.create_list(:customer, 100)

  FactoryGirl.create_list(:orders, 500,
                          salesman: salesmen[rand(0..salesmen.count - 1)],
                          customers: customers[rand(0..customers.count - 1)])
end
