class DiscussionsController < ApplicationController
  before_action :set_discussion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @discussions = Discussion.all
    respond_with(@discussions)
  end

  def show
    @comment = Comment.new
    respond_with(@discussion)
  end

  def new
    @discussion = Discussion.new
    if params[:topic_id]
      @topic = Topic.find(params[:topic_id])
    end
    respond_with(@discussion)
  end

  def edit
  end

  def create
    @discussion = Discussion.new(discussion_params)
    @discussion.user = current_user
    @discussion.save
    redirect_to topic_path(@discussion.topic)
  end

  def update
    @discussion.update(discussion_params)
    respond_with(@discussion)
  end

  def destroy
    @discussion.destroy
    respond_with(@discussion)
  end

  private
    def set_discussion
      @discussion = Discussion.find(params[:id])
    end

    def discussion_params
      params.require(:discussion).permit(:user_id, :title, :content, :topic_id)
    end
end
