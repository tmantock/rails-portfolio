class ApplicationsController < ApplicationController
    # Index route
    def index
        # Get all of the applications
        @applications = Application.all
    end
end
