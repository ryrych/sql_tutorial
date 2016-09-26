ActiveRecord::Base.transaction do
  salesmen  = FactoryGirl.create_list(:salesman, 10)
  customers = FactoryGirl.create_list(:customer, 100)

  FactoryGirl.create_list(:order, 500,
                          salesman: salesmen[rand(0..salesmen.count - 1)],
                          customer: customers[rand(0..customers.count - 1)])

  testable_array = %w(A001/DJ-402%45\2015/200
                      A001/DJ-402\44
                      A001/DJ-402\44_/100/2015
                      A001/DJ_401
                      A001/DJ_402%45\2015/300
                      A001/DJ_402\44
                      A001/DJ_402\44\2015
                      A001/DJ_402\45\2015%100
                      A001_DJ-402-2014-2015
                      A001_\DJ-402\44_/100/2015
                      A002_DJ-401-2014-2015)

  testable_array.each do |entry|
    FactoryGirl.create(:testable, col1: entry)
  end
end
