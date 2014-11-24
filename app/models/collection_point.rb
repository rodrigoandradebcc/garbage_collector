class CollectionPoint < ActiveRecord::Base
  belongs_to :user
  has_many :donations
end
