class ChannelsPageController < ApplicationController
  def home
	require 'open-uri'
	require 'json'

	@streams_summary = JSON.parse(open("https://api.twitch.tv/kraken/streams/summary").read)
	games_top = JSON.parse(open("https://api.twitch.tv/kraken/games/top").read)

	# search for similar games
	search = JSON.parse(open("https://api.twitch.tv/kraken/search/games?q=star&type=suggest").read)

	@search_answer = []
	search["games"].each do |game|
		@search_answer.push game["box"]["medium"]
	end

	# get total twitch numbers
	@channel_number = @streams_summary["channels"]
	@viewer_number = @streams_summary["viewers"]

	#@game_logo = @games_top["top"][1]["game"]["box"]["medium"]

	
	@games_top_img = [] # get array with imgs of top games
	games_top["top"].each do |game|
		@games_top_img.push game["game"]["box"]["medium"]
	end

  end

  def search_streams
	# search for streams
	@search_result = JSON.parse(open("https://api.twitch.tv/kraken/search/streams?limit=25&offset=0&q="+params[:search_id]).read)
  end


  def search_games
	# search for streams
	params[:search_id] = "BioShock%20Infinite"
	@search_games_result = JSON.parse(open("https://api.twitch.tv/kraken/streams?game="+params[:search_id]).read)
  end

end
