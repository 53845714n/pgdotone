class PlanePicturesController < ApplicationController
  before_action :set_plane_picture, only: [:show, :edit, :update, :destroy]

  # GET /plane_pictures
  # GET /plane_pictures.json
  def index
    @plane_pictures = PlanePicture.all
  end

  # GET /plane_pictures/1
  # GET /plane_pictures/1.json
  def show
  end

  # GET /plane_pictures/new
  def new
    @plane_picture = PlanePicture.new
  end

  # GET /plane_pictures/1/edit
  def edit
  end

  # POST /plane_pictures
  # POST /plane_pictures.json
  def create
    @plane_picture = PlanePicture.new(plane_picture_params)

    respond_to do |format|
      if @plane_picture.save
        format.html { redirect_to @plane_picture, notice: 'Plane picture was successfully created.' }
        format.json { render :show, status: :created, location: @plane_picture }
      else
        format.html { render :new }
        format.json { render json: @plane_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plane_pictures/1
  # PATCH/PUT /plane_pictures/1.json
  def update
    respond_to do |format|
      if @plane_picture.update(plane_picture_params)
        format.html { redirect_to @plane_picture, notice: 'Plane picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @plane_picture }
      else
        format.html { render :edit }
        format.json { render json: @plane_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plane_pictures/1
  # DELETE /plane_pictures/1.json
  def destroy
    @plane_picture.destroy
    respond_to do |format|
      format.html { redirect_to plane_pictures_url, notice: 'Plane picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plane_picture
      @plane_picture = PlanePicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plane_picture_params
      params.require(:plane_picture).permit(:department_model_id, :image_file_name, :image_content_type, :image_file_size)
    end
end
