class TweetsController < ApplicationController
	def create
  	@tweet = Tweet.new(tweet_params)
  	@tweet.user_id = current_user.id
  	if @tweet.save
  		redirect_to root_path
  	end
  end

  def show
    @tweet = Tweet.find(params[:id])
    @replies = @tweet.replies
  end


  private

  def tweet_params
  	params.require(:tweet).permit(:user_id, :content)
  end
end
