class SessionsController < ApplicationController

    def new
        # nothing goes here, this just renders the form for logging in (creating a new session)
    end

    def create
        # this takes the params of the form rendered in the NEW action and sets the session[:user]
        if params[:name] == nil || params[:name] == ""
            return redirect_to :controller => 'sessions', :action => 'new'
        end
        session[:name] = params[:name]
        return redirect_to :controller => 'application', :action => 'hello'
    end

    def destroy
        session.delete :name# this just destroys the session user and redirects to the new form
        redirect_to :controller => 'sessions', :action => 'new'
    end

end
