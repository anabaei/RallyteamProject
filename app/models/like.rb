class Like < ApplicationRecord
  belongs_to :user
  belongs_to :rawresult

  validates :rawresult_id, uniqueness:  {
   scope: :user_id,
   message: ->(object, data) do
     "You've already liked it!"
   end
 }

end
