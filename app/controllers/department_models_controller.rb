class DepartmentModelsController < ApplicationController
  before_action :set_department_model, only: [:show, :edit, :update, :destroy]

  # GET /department_models
  # GET /department_models.json
  def index
    @department_models = DepartmentModel.all
  end

  # GET /department_models/1
  # GET /department_models/1.json
  def show
  end

  # GET /department_models/new
  def new
    @department_model = DepartmentModel.new
  end

  # GET /department_models/1/edit
  def edit
  end

  # POST /department_models
  # POST /department_models.json
  def create
    if params[:department_model][:surface] && params[:department_model][:roof]
      surface = params[:department_model][:surface].to_i
      root    = params[:department_model][:roof].to_i
      params[:department_model][:total_surface] = surface + root
    end
    @department_model = DepartmentModel.new(department_model_params)

    respond_to do |format|
      if @department_model.save
        if params[:plane_images]
          params[:plane_images].each { |image| 
            @department_model.plane_pictures.create(image: image)
          }
        end
        if params[:orientation_images]
          params[:orientation_images].each { |image| 
            @department_model.orientation_pictures.create(image: image)
          }
        end
        if params[:view_images]
          params[:view_images].each { |image| 
            @department_model.view_pictures.create(image: image)
          }
        end

        format.html { redirect_to admin_path, notice: 'Department model was successfully created.' }
        format.json { render :show, status: :created, location: @department_model }
      else
        format.html { render :new }
        format.json { render json: @department_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /department_models/1
  # PATCH/PUT /department_models/1.json
  def update
    respond_to do |format|
      if @department_model.update(department_model_params)
        format.html { redirect_to admin_path, notice: 'Department model was successfully updated.' }
        format.json { render :show, status: :ok, location: @department_model }
      else
        format.html { render :edit }
        format.json { render json: @department_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /department_models/1
  # DELETE /department_models/1.json
  def destroy
    @department_model.destroy
    respond_to do |format|
      format.html { redirect_to admin_path, notice: 'Department model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department_model
      @department_model = DepartmentModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_model_params
      params.require(:department_model).permit(
        :department_name, 
        :description, 
        :surface, 
        :roof, 
        :total_surface, 
        :suite_bath, 
        :active,
        :bathroom,
        :bedroom,
        :since_uf
      )
    end
end
