class NotesController < ApplicationController
  
  before_filter :authenticate_user!

  def index
    @notes = Note.all
    @note = Note.new
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(params[:note])
    @note.user_id = current_user.id

    respond_to do |format|
      if @note.save
        format.html { redirect_to(notes_path, :notice => 'done.') }
        format.js
      else
        format.html { render :action => "new" }
      end
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html { redirect_to(notes_path, :notice => "updated") }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    respond_to do |format|
      format.html { redirect_to(notes_url, :notice => "you destroyed your message") }
      format.js
    end
  end

end
