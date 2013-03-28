class DirectoryController < ApplicationController
  def streams
  	require 'open-uri'
  	require 'json'
  	@return_streams = JSON.parse(open("https://api.twitch.tv/kraken/streams").read)
  end

  def return_followers(channel_name)
  	#followers = JSON.parse(open(link).read)
  	#followers = JSON.parse(open("https://api.twitch.tv/kraken/channels/"+(channel_name)+"/follows.json?limit=1&offset=1").read)
  	#return followers["_total"]
  	return "123"
  	##########
  	# disabled for now
  	# need to return number of followers
  	# use chache and db to improve performence
  	##########
  end

  def return_videos_number(channel_name)
  	#followers = JSON.parse(open(link).read)
  	#followers = JSON.parse(open("https://api.twitch.tv/kraken/channels/"+(channel_name)+"/follows.json?limit=1&offset=1").read)
  	#return followers["_total"]
  	return "123"
  	##########
  	# disabled for now
  	# need to return number of followers
  	# use chache and db to improve performence
  	##########
  end

  helper_method :return_followers
  helper_method :return_videos_number
end
