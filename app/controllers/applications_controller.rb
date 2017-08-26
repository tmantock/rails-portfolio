class ApplicationsController < ApplicationController
    # Index route
    def index
        # Get all of the applications
        @applications = Application.all
    end

    # New Route for the Application form
    def new
        @application = Application.new
    end

    # Create Method for creating a new Application
    def create
        @application = Application.new(application_params)

        respond_to do |format|
            if @application.save
                format.html { redirect_to applications_path, notice: 'Your Application has been created.'}
            else
                format.html { render :new }
            end
        end
    end

    private
        def application_params
            params.require(:application).permit(:title, :subtitle, :thumbnail, :image, :body)
        end
end
