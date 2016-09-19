ActiveRecord::Base.transaction do
  syme = FactoryGirl.create(:user, name: 'Syme', email: 'syme@evaporated.oc')

  salesmen = FactoryGirl.create_list(:salesman, 10)
  customers = FactoryGirl.create_list(:customer, 100)

  FactoryGirl.create_list(:orders, 100)


end
