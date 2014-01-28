class Relationship < ActiveRecord::Base
  attr_accessible :article_id, :category_id

  belongs_to :category
  belongs_to :article

end
