class Product < ActiveRecord::Base

  PER_PAGE_NUMBER = 20
  attr_accessible :description, :name, :attachments_attributes
  has_many :attachments, as: :attachable
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :attachments, allow_destroy: true
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: :true, length: { minimum: 10 }

end
