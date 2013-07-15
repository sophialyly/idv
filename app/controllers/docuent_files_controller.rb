class DocuentFilesController < ApplicationController
  # GET /docuent_files
  # GET /docuent_files.json
  def index
    @docuent_files = DocuentFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @docuent_files }
    end
  end

  # GET /docuent_files/1
  # GET /docuent_files/1.json
  def show
    @docuent_file = DocuentFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @docuent_file }
    end
  end

  # GET /docuent_files/new
  # GET /docuent_files/new.json
  def new
    @docuent_file = DocuentFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @docuent_file }
    end
  end

  # GET /docuent_files/1/edit
  def edit
    if current_user.role =="admin"
      @docuent_file = DocuentFile.find(params[:id])
    else
      redirect_to docuent_files_path 
    end
  end

  # POST /docuent_files
  # POST /docuent_files.json
  def create
  if current_user.role == "admin"
 
    @docuent_file = DocuentFile.new(params[:docuent_file])

    respond_to do |format|
      if @docuent_file.save
        format.html { redirect_to :back, notice: 'Docuent file was successfully created.' }
        format.json { render json: @docuent_file, status: :created, location: @docuent_file }
       
        if @docuent_file.typeo == 'magazine'
          @suscript = Suscript.where(:suscription_type => 'revista')
          @suscript.each do |s|
            @mail_n = UserNotify.suscript_to_magazine(s.user).deliver
          end
        end
        
        
        if @docuent_file.typeo == 'course'
          @suscript = Suscript.where(:suscription_type => 'curso')
          @suscript.each do |s|
            @mail_n = UserNotify.suscript_to_biblic_course(s.user).deliver
          end
        end
        
      else
        format.html { redirect_to :back, notice: 'Docuent file was no successfully created.' }
        format.json { render json: @docuent_file.errors, status: :unprocessable_entity }
      end
    end
    else
  end
  end

  # PUT /docuent_files/1
  # PUT /docuent_files/1.json
  def update
  if current_user.role == "admin"
    @docuent_file = DocuentFile.find(params[:id])

    respond_to do |format|
      if @docuent_file.update_attributes(params[:docuent_file])
        format.html { redirect_to @docuent_file, notice: 'Docuent file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @docuent_file.errors, status: :unprocessable_entity }
      end
    end
    else
  end
  end

  # DELETE /docuent_files/1
  # DELETE /docuent_files/1.json
  def destroy
  if current_user.role == "admin"
  
    @docuent_file = DocuentFile.find(params[:id])
    @docuent_file.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
  else
 end
end
