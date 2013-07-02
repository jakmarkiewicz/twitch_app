class DirectoryController < ApplicationController
  def streams
    require 'uri'
  	require 'open-uri'
  	require 'json'
    if params[:game_id].present?
      @game_id = params[:game_id].gsub!(/ /, '+')
      @return_streams = JSON.parse(open("https://api.twitch.tv/kraken/streams?limit=10&offset=0&game="+@game_id).read)
    else
      @return_streams = JSON.parse(open("https://api.twitch.tv/kraken/streams?limit=10&offset=0").read)
    end
  	
    @return_games = JSON.parse(open("https://api.twitch.tv/kraken/games/top?limit=100&offset=0").read)
  end

  def channel
    @channel_id = params[:id]
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
