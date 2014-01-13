class TweetsController < ApplicationController
	before_action  :set_tweet, only: [:show, :edit, :update, :order]

	def index
		@tweets = Tweet.all 
	end

	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.create(tweet_params)

		if @tweet.save
			redirect_to tweet_show_path(@tweet.id)
		else
			render action: 'new'
		end
	end

	def show 
	end


	private

	def set_tweet
		@tweet = Tweet.find(params[:id])
	end

	def tweet_params
		params.require(:tweet).permit(:author, :body)
	end

end