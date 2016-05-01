class ProjectPicturesController < ApplicationController
  before_action :set_project_picture, only: [:show, :edit, :update, :destroy]

  # GET /project_pictures
  # GET /project_pictures.json
  def index
    @project_pictures = ProjectPicture.all
  end

  # GET /project_pictures/1
  # GET /project_pictures/1.json
  def show
  end

  # GET /project_pictures/new
  def new
    @project_picture = ProjectPicture.new
  end

  # GET /project_pictures/1/edit
  def edit
  end

  # POST /project_pictures
  # POST /project_pictures.json
  def create
    @project_picture = ProjectPicture.new(project_picture_params)

    respond_to do |format|
      if @project_picture.save
        format.html { redirect_to @project_picture, notice: 'Project picture was successfully created.' }
        format.json { render :show, status: :created, location: @project_picture }
      else
        format.html { render :new }
        format.json { render json: @project_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_pictures/1
  # PATCH/PUT /project_pictures/1.json
  def update
    respond_to do |format|
      if @project_picture.update(project_picture_params)
        format.html { redirect_to @project_picture, notice: 'Project picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_picture }
      else
        format.html { render :edit }
        format.json { render json: @project_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_pictures/1
  # DELETE /project_pictures/1.json
  def destroy
    @project_picture.destroy
    respond_to do |format|
      format.html { redirect_to project_pictures_url, notice: 'Project picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_picture
      @project_picture = ProjectPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_picture_params
      params.require(:project_picture).permit(:project_id, :image_file_name, :image_content_type, :image_file_size)
    end
end
