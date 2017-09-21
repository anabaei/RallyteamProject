class Search < ApplicationRecord
  belongs_to :user, optional: true
  # before_create :check_to_twitter

  def self.check_to_twitter(user, info)

  searchquery = Searchquery.new("searchword": :info)
  byebug
  searchquery.user = user
  searchquery.save
# this line update the twitter account with info of user inputs
      user.twitter.search(info, :result_type => "recent").take(10).collect do |tweet|
          rawsearch =  Rawresult.new(
            "name": "#{tweet.user.name}",
            "screen_name": "#{tweet.user.screen_name}",
            "text": "#{tweet.text}",
            "profile_image_url": "#{tweet.user.profile_image_url}",
            "created_at": "#{tweet.created_at}"
          )
          rawsearch.searchquery = searchquery
          rawsearch.save
      end

  end


end
