class Product < ActiveRecord::Base
  PER_PAGE_NUMBER = 3
  attr_accessible :description, :name, :attachments_attributes
  has_many :attachments, as: :attachable
  accepts_nested_attributes_for :attachments, allow_destroy: true
end
