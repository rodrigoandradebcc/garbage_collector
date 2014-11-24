class Donation < ActiveRecord::Base
  belongs_to :user
  belongs_to :collection_point
  belongs_to :bonu
end
