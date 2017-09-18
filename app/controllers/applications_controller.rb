class ApplicationsController < ApplicationController
    before_action :set_application, only: [:show, :edit, :update, :destroy]
    layout "applications"

    # Index route
    def index
        # Get all of the applications
        @applications = Application.all
    end

    # Show Route
    def show
    end

    # New Route for the Application form
    def new
        @application = Application.new
        3.times { @application.technologies.build }
    end

    # Create Method for creating a new Application
    def create
        @application = Application.new(application_params)

        respond_to do |format|
            if @application.save
                format.html { redirect_to applications_path, notice: 'Your Application has been Created.'}
            else
                format.html { render :new }
            end
        end
    end

    # Edit Route
    def edit
    end

    def update
        respond_to do |format|
            if @application.update(application_params)
                format.html { redirect_to applications_path, notice: 'Your Application has been Updated.'}
            else
                format.html { render :edit }
            end
        end
    end

    def destroy
        @application.destroy
        respond_to do |format|
            format.html { redirect_to applications_path, notice: "Your Application has been Deleted."}
        end
    end

    private
        def set_application
            @application = Application.find(params[:id])
        end

        def application_params
            params.require(:application).permit(
                :title,
                :subtitle,
                :thumbnail,
                :image,
                :body,
                technologies_attributes: [:name]
            )
        end
end
