class Sessions1Controller < ApplicationController
     def new
     end
     def create
       company = Company.find_by(email: params[:session][:email])
       if company && company.authenticate(params[:session][:password])
       session[:company_id] = company.id
       flash[:success] = "You have successfully logged in"
       redirect_to company_path(company)
       else
       flash.now[:danger] = "There was something wrong with your login information"
       render 'new'
       end
     end
     def destroy
       session[:company_id] = nil
       flash[:success] = "You have logged out"
        redirect_to root_path
      end
end