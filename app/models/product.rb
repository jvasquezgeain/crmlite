class Product < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :calendars

  enum type_product: [:tics, :financial, :human_resource]  
end
