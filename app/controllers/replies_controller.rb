class RepliesController < ApplicationController
  
  def create
  	@reply = Reply.new(reply_params)

  	if @reply.save
  		redirect_to @reply.tweet
  	end
  end


  private

  def set_tweet
  	@_tweet ||= Tweet.find(params[:id])
  end

  def reply_params
  	params.require(:tweet).permit(:user_id, :content)
  end
end
