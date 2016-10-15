class Vote < ActiveRecord::Base
  validates :hero, :email, presence: true
end
