class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :require_student, except: [:create, :new]
  before_action :require_same_student, only: [:edit, :update, :destroy,:index,:show]
  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
      if @student.save
         session[:student_id] = @student.id
         flash[:suceess] ="Student was successfully created."
         redirect_to @student
      else
        render :new
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    
      if @student.update(student_params)
         flash[:suceess] ="Student was successfully updated."
         redirect_to student_path(@student)
      else
        render :edit 
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
      flash[:danger]= 'Student was successfully destroyed.'
      redirect_to students_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:studentName,:registration,:Dob, :branch, :cgpa, :subject, :language, :contact, :email, :address,:password)
    end
    def require_same_student
      if current_student != @student
      flash[:danger] = "You can only edit or delete your own"
      redirect_to student_path(current_student)
      end
    end


end
