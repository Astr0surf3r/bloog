class Article < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :comments

  has_many :relationships
  has_many :categories, through: :relationships
  


end
