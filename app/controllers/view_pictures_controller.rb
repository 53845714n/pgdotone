class ViewPicturesController < ApplicationController
  before_action :set_view_picture, only: [:show, :edit, :update, :destroy]

  # GET /view_pictures
  # GET /view_pictures.json
  def index
    @view_pictures = ViewPicture.all
  end

  # GET /view_pictures/1
  # GET /view_pictures/1.json
  def show
  end

  # GET /view_pictures/new
  def new
    @view_picture = ViewPicture.new
  end

  # GET /view_pictures/1/edit
  def edit
  end

  # POST /view_pictures
  # POST /view_pictures.json
  def create
    @view_picture = ViewPicture.new(view_picture_params)

    respond_to do |format|
      if @view_picture.save
        format.html { redirect_to @view_picture, notice: 'View picture was successfully created.' }
        format.json { render :show, status: :created, location: @view_picture }
      else
        format.html { render :new }
        format.json { render json: @view_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /view_pictures/1
  # PATCH/PUT /view_pictures/1.json
  def update
    respond_to do |format|
      if @view_picture.update(view_picture_params)
        format.html { redirect_to @view_picture, notice: 'View picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @view_picture }
      else
        format.html { render :edit }
        format.json { render json: @view_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /view_pictures/1
  # DELETE /view_pictures/1.json
  def destroy
    @view_picture.destroy
    respond_to do |format|
      format.html { redirect_to view_pictures_url, notice: 'View picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_view_picture
      @view_picture = ViewPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def view_picture_params
      params.require(:view_picture).permit(:department_model_id, :image_file_name, :image_content_type, :image_file_size)
    end
end
