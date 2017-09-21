class TracksController < ApplicationController
  def index
    if current_user
      @tracks = current_user.tracks.order(created_at: :desc)
      @track = Track.new
    end
  end

  def new
    @track = Track.new
  end

  def create
    @track = current_user.tracks.new(track_params.except(:run))
    if @track.save
      # ActionCable.server.broadcast 'comments_channel',
      # post: @comment.post,
      # comment: render(partial: 'comment', locals: { comment: @comment })
      # head :ok
      redirect_to tracks_path, flash: { success: 'The post has been created' }
    else
      redirect_to root_path, flash: { error: "The comment can't be blank" }
    end
  end

  private
    def track_params
      params.require(:track).permit(:description, :name, :time, :start, :stop, :run)
    end
end
