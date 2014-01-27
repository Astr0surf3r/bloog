class Category < ActiveRecord::Base
  attr_accessible :name
  
  has_many :relationships 
  has_many :articles, through: :relationships
  
end
