class SpecialRequestsController < ApplicationController
  # GET /special_requests
  # GET /special_requests.json
  def index
    @special_requests = current_user.special_requests.order("created_at DESC").page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @special_requests }
    end
  end

  # GET /special_requests/1
  # GET /special_requests/1.json
  def show
    @special_request = SpecialRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @special_request }
    end
  end

  # GET /special_requests/new
  # GET /special_requests/new.json
  def new
    @special_request = SpecialRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @special_request }
    end
  end

  # GET /special_requests/1/edit
  def edit
    @special_request = SpecialRequest.find(params[:id])
  end

  # POST /special_requests
  # POST /special_requests.json
  def create
    @special_request = SpecialRequest.new(params[:special_request])
    @special_request.user_id = current_user.id
    respond_to do |format|
      if @special_request.save
         request = @special_request.request_i
         puts "******* se crean las acciones para mandar mail masico a todos los usuarios *******"
         @users = User.all
         @users.each do |user_to|
           UserNotify.create_new_request(user_to, request)
         end
        format.js #{ redirect_to @special_request, notice: 'Special request was successfully created.' }
        format.json # { render json: @special_request, status: :created, location: @special_request }
      end
    end
  end

  # PUT /special_requests/1
  # PUT /special_requests/1.json
  def update
    @special_request = SpecialRequest.find(params[:id])
      
    respond_to do |format|
      if @special_request.update_attributes(params[:special_request])
        format.html { redirect_to @special_request, notice: 'Special request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @special_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_requests/1
  # DELETE /special_requests/1.json
  def destroy
    @special_request = SpecialRequest.find(params[:id])
    @special_request.destroy

    respond_to do |format|
      format.html{ redirect_to special_requests_url }
      format.json { head :no_content }
    end
  end
end
