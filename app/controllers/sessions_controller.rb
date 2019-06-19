class SessionsController < ApplicationController
     def new
     end
     def create
       student = Student.find_by(email: params[:session][:email])
       if student && student.authenticate(params[:session][:password])
       session[:student_id] = student.id
       flash[:success] = "You have successfully logged in"
       redirect_to student_path(student)
       else
       flash.now[:danger] = "you have eneter wrong login information"
       render 'new'
       end
     end
     def destroy
       session[:student_id] = nil
       flash[:success] = "You have logged out"
        redirect_to root_path
      end
end