class IncertVideosController < ApplicationController
  # GET /incert_videos
  # GET /incert_videos.json
  def index
    @incert_videos = IncertVideo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incert_videos }
    end
  end

  # GET /incert_videos/1
  # GET /incert_videos/1.json
  def show
    @incert_video = IncertVideo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incert_video }
    end
  end

  # GET /incert_videos/new
  # GET /incert_videos/new.json
  def new
    @incert_video = IncertVideo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incert_video }
    end
  end

  # GET /incert_videos/1/edit
  def edit
    @incert_video = IncertVideo.find(params[:id])
  end

  # POST /incert_videos
  # POST /incert_videos.json
  def create
    @incert_video = IncertVideo.new(params[:incert_video])
    respond_to do |format|
      if @incert_video.save
        @suscriptions = Suscript.where(:suscription_type => "contenidos")
          @suscriptions.each do |suscription| 
            user = suscription.user
            type = "contenidos"
            @mail = UserNotify.notification_update(user, type)
            puts @mail
          end
        format.html { redirect_to :back, notice: 'Incert video was successfully created.' }
        format.json { render json: @incert_video, status: :created, location: @incert_video }
      else
        format.html { render action: "new" }
        format.json { render json: @incert_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incert_videos/1
  # PUT /incert_videos/1.json
  def update
    @incert_video = IncertVideo.find(params[:id])

    respond_to do |format|
      if @incert_video.update_attributes(params[:incert_video])
        format.html { redirect_to @incert_video, notice: 'Incert video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @incert_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incert_videos/1
  # DELETE /incert_videos/1.json
  def destroy
    @incert_video = IncertVideo.find(params[:id])
    @incert_video.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
end
