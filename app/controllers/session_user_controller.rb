class SessionUserController < ApplicationController
    
    def new
    
    @user = User.new
    
    end
    
    
    def create 
       
       @user = User.find_by(email: params[:session][:email])
       
       if @user
           if @user.authenticate(params[:session][:password])
          session[:user_id] = @user.id
           redirect_to user_path(id: @user.id), notice: 'Welcome to Its My First Ruby App'
           
       else
           redirect_to sign_in_path, notice: 'Invalid Username/Password'
           
       end
           
       else
           redirect_to sign_in_path, notice: 'User Not Found'
           
       end
       
    end
    
    
    def destroy
    
        session.delete(:user_id)
        redirect_to sign_in_path, notice: 'Successfully Signed Out'
        
    end
    
    
    end


