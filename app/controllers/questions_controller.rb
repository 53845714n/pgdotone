class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    last_order = Question.select(:order).last
    if params[:question][:order] && params[:question][:master]
      params[:question][:order]  = last_order.order + 1
      params[:question][:master] = false
    end
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to admin_path, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to admin_path, notice: 'La pregunta ha sido actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to admin_path, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def flop
    question = Question.find(params[:id])
    question.active = !question.active
    question.save

    redirect_to admin_path
  end

  def up_order
    question = Question.find(params[:id])
    question.update_attributes(order: question.order + 1)
    question.save
    redirect_to admin_path
  end

  def down_order
    question = Question.find(params[:id])
    question.update_attributes(order: question.order - 1)
    question.save
    redirect_to admin_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:name, :answer, :active, :order, :master)
    end
end
