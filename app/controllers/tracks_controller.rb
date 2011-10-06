class TracksController < ApplicationController
  
  before_filter :authenticate_user!

  def index
    @tracks = Track.all
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(params[:track])
    @track.user_id = current_user.id

    respond_to do |format|
      if @track.save
        format.html { redirect_to(tracks_path, :notice => 'done.') }
        format.js
      else
        format.html { render :action => "new" }
      end
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    respond_to do |format|
      if @track.update_attributes(params[:track])
        format.html { redirect_to(tracks_path, :notice => "updated") }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    respond_to do |format|
      format.html { redirect_to(tracks_url, :notice => "you destroyed your track") }
      format.js
    end
  end

end
