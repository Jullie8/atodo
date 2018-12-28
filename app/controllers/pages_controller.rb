class PagesController < ApplicationController
    #show action renders a page template that is same name as a parameter that is passed in
    #call the parameter page
    
    def show
        render template: "pages/#{params[:page]}"
    end

end
