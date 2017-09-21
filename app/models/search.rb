class Search < ApplicationRecord
  belongs_to :user, optional: true
  # before_create :check_to_twitter

  def self.check_to_twitter(user, info)
  result = []
    index = 0

# this line update the twitter account with info of user inputs
      user.twitter.search(info, :result_type => "recent").take(2).collect do |tweet|
          result[index]= {"screen_name": "#{tweet.user.screen_name}", "text": "#{tweet.text}", "profile_image_url": "#{tweet.user.profile_image_url}", "created_at": "#{tweet.created_at}" }
          index+=1
      end


    result
     # user.twitter.update(info)
  end



end
