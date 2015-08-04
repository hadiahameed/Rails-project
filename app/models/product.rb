class Product < ActiveRecord::Base
  PER_PAGE_NUMBER = 3
  attr_accessible :description, :name
end
