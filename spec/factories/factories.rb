FactoryGirl.define do
  factory :salesman do
    name { FFaker::Name.name }
    city { FFaker::Address.city }
    commission { rand(1..100) }
  end

  factory :customer do
    cust_name { FFaker::Name.name }
    city { FFaker::Address.city }
    grade { rand(100..500) }
  end

  factory :order do
    purch_amt { rand(500..2000) }
    ord_date { FFaker::Time.date }

    customer
    salesman
  end
end
