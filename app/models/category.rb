class Category < ActiveRecord::Base
  has_many :photos
  
  has_many :articles
  
  validates_presence_of :title, :content
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
