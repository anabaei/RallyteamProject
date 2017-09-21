class Tweet < ApplicationRecord
  belongs_to :user


  before_create :post_to_twitter


  def post_to_twitter
    result = []
    index = 0
# this line update the twitter account with body of user inputs
      user.twitter.search(body, :result_type => "recent").take(10).collect do |tweet|
          result[index]= {"screen_name": "#{tweet.user.screen_name}", "text": "#{tweet.text}", "profile_image_url": "#{tweet.user.profile_image_url}", "created_at": "#{tweet.created_at}" }
          index+=1
      end
   
    # user.twitter.update(body)
  end

  def search
   "XXXX"
  end
  # def search
  #   user.twitter.search(body, :result_type => "recent").take(10).collect do |tweet|
  #     "#{tweet.user.screen_name}: #{tweet.text}"
  #   end
  # end


end
