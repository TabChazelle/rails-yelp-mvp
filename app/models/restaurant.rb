class Restaurant < ApplicationRecord
  has_many :reviews, dependents: :destroy
end
