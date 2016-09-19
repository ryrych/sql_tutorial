class Order < ActiveRecord::Base
  belongs_to :customer, inverse_of: :orders
  belongs_to :salesman, inverse_of: :orders
end
