class Rawresult < ApplicationRecord
  belongs_to :searchquery
  has_many :likes, dependent: :destroy
end
