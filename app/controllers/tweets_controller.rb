  class TweetsController < ApplicationController
  before_action :set_user #, only: [:show, :edit, :update, :destroy]

  # GET /users/tweets
  # GET /users/tweets.json
  def index
    @tweets = Tweet.all
  end

  # GET /users/1/tweets/1
  # GET /users/1/tweets/1.json
  def show
    #format.html { redirect_to @user }
  end

  # GET /users/tweets/new
  def new
    @tweet = Tweet.new
  end

  # GET /users/tweets/1/edit
  def edit
  end

  # POST /users/1/tweet
  # POST /users/1/tweet.json
  def create
    @tweet = Tweet.new(content: params[:tweet][:content], user_id: @user.id)
    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @user }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { redirect_to @user }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1/tweets/1
  # PATCH/PUT /users/1/tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @user, notice: 'Tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: 'Tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tweet_params
    params.require(:tweet).permit(:content, :id_user)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:user_id])
  end
end
