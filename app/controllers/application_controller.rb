class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
   # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    helper_method :current_student, :logged_in1?
    def current_student
      @current_student ||= Student.find(session[:student_id]) if session[:student_id]
    end
    def logged_in1?
      !!current_student
    end
    def require_student
      if !logged_in1?
     flash[:danger] = "You must be logged in to perform that action"
     redirect_to root_path
      end
    end
    helper_method :current_company, :logged_in2?
    def current_company
      @current_company ||= Company.find(session[:company_id]) if session[:company_id]
    end
    def logged_in2?
      !!current_company
    end
    def require_company
      if !logged_in2?
     flash[:danger] = "You must be logged in to perform that action"
     redirect_to root_path
      end
    end
end
