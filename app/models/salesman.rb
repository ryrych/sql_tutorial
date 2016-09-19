class Salesman < ActiveRecord::Base
  has_many :orders, inverse_of: :customer, dependent: :destroy
end
