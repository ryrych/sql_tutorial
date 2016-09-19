FactoryGirl.define do
  factory :order do
    ord_no
    purch_amt { rand(500..2000) }
    ord_date { FFaker::Time.date }

    # customer
    # salesman
  end
end
