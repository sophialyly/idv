class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.json
  def index
       @gallery_private = Photo.where(:add_gallery => 'private')
       @gallery_public = Photo.where(:add_gallery => 'public')
       @gallery_sucot = Photo.where(:add_gallery => 'sucot')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    if current_user.role == "admin"
    @photo = Photo.find(params[:id])
    else
      redirect_to root_path
    end
  end

  # POST /photos
  # POST /photos.json
  def create
    if current_user.role == "admin"
    
    @photo = Photo.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to :back, notice: 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { redirect_to :back }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
    else
      redirect_to root_path
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    if current_user.role == "admin"
    
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to :back, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to :back }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
    else
      redirect_to root_path
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    if current_user.role == "admin"
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
  else
    redirect_to root_path
  end
end
