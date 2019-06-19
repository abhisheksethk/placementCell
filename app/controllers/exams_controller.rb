class ExamsController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy]

  # GET /exams
  # GET /exams.json
  def index
    @exams = Exam.all
  end

  # GET /exams/1
  # GET /exams/1.json
  def show

  end

  # GET /exams/new
  def new
    @exam = Exam.new 
    @company=current_company
    @jobs=Job.where(:company_id => @company.id)

  end

  # GET /exams/1/edit
  def edit
    @company=current_company
    @jobs=Job.where(:company_id => @company.id)
  end

  # POST /exams
  # POST /exams.json
  def create
    @exam = Exam.new(exam_params)
         # here i have problem what to write for job_id 
      if @exam.save
        flash[:success]= 'Exam was successfully created.'
       redirect_to @exam 
      else
        render :new 
      end
  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
      if @exam.update(exam_params)
         flash[:success]= 'Exam was successfully updated.'
        redirect_to @exam 
      else
        render :edit 
      end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam.destroy
    flash[:danger]= 'Exam was successfully destroyed.'
    redirect_to exams_url 
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
      @exam = Exam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params.require(:exam).permit(:examtype, :date, :time, :result,:job_id)
    end
end
