class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  before_action :require_company, except: [:create, :new]
  before_action :require_same_company, only: [:edit, :update, :destroy,:show,:index]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)
      if @company.save
       session[:company_id] = @company.id
       redirect_to @company
       flash[:success]= "Company was successfully created."
      else
        render :new 
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
      if @company.update(company_params)
       redirect_to @company
       flash[:success]= "Company was successfully updated."
      else
        render :edit 
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
     redirect_to companies_url
     flash[:danger]= "Company was successfully destroyed." 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end
    def require_same_company
      if current_company != @company
      flash[:danger] = "You can only edit or delete your own "
      redirect_to company_path(current_company)
      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:compName, :hrName, :contactNumber, :compPostalAddress, :email, :website,:password)
    end
end
