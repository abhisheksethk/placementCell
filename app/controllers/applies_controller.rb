class AppliesController < ApplicationController
  before_action :set_apply, only: [:show, :edit, :update, :destroy]

  # GET /applies
  # GET /applies.json
  def index
    @applies = Apply.all
  end

  # GET /applies/1
  # GET /applies/1.json
  def show
  end

  # GET /applies/new
  def new
    @apply = Apply.new
    
  end

  # GET /applies/1/edit
  def edit
    @jobs = Job.all 
  end

  # POST /applies
  # POST /applies.json
  def create
    @apply = Apply.new(apply_params)
     @apply.student=current_student
      if @apply.save
        flash[:success]= 'Apply was successfully created.'
       redirect_to @apply
        apply
      else
       render :new 
      end
  end

  # PATCH/PUT /applies/1
  # PATCH/PUT /applies/1.json
  def update
      if @apply.update(apply_params)
      flash[:success]= 'Apply was successfully updated.'
      redirect_to @apply 
      else
      render :edit 
      end
  end

  # DELETE /applies/1
  # DELETE /applies/1.json
  def destroy
    @apply.destroy
    flash[:danger]= 'Apply was successfully destroyed.'
    redirect_to applies_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply
      @apply = Apply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apply_params
      params.require(:apply).permit(:name,:job_id)
    end
end
