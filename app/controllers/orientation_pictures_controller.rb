class OrientationPicturesController < ApplicationController
  before_action :set_orientation_picture, only: [:show, :edit, :update, :destroy]

  # GET /orientation_pictures
  # GET /orientation_pictures.json
  def index
    @orientation_pictures = OrientationPicture.all
  end

  # GET /orientation_pictures/1
  # GET /orientation_pictures/1.json
  def show
  end

  # GET /orientation_pictures/new
  def new
    @orientation_picture = OrientationPicture.new
  end

  # GET /orientation_pictures/1/edit
  def edit
  end

  # POST /orientation_pictures
  # POST /orientation_pictures.json
  def create
    @orientation_picture = OrientationPicture.new(orientation_picture_params)

    respond_to do |format|
      if @orientation_picture.save
        format.html { redirect_to @orientation_picture, notice: 'Orientation picture was successfully created.' }
        format.json { render :show, status: :created, location: @orientation_picture }
      else
        format.html { render :new }
        format.json { render json: @orientation_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orientation_pictures/1
  # PATCH/PUT /orientation_pictures/1.json
  def update
    respond_to do |format|
      if @orientation_picture.update(orientation_picture_params)
        format.html { redirect_to @orientation_picture, notice: 'Orientation picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @orientation_picture }
      else
        format.html { render :edit }
        format.json { render json: @orientation_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orientation_pictures/1
  # DELETE /orientation_pictures/1.json
  def destroy
    @orientation_picture.destroy
    respond_to do |format|
      format.html { redirect_to orientation_pictures_url, notice: 'Orientation picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orientation_picture
      @orientation_picture = OrientationPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orientation_picture_params
      params.require(:orientation_picture).permit(:department_model_id, :image_file_name, :image_content_type, :image_file_size)
    end
end
