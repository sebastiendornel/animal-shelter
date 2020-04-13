class AdoptionProcessesController < ApplicationController
    before_action :find_adoption_processes, only: [:show, :edit, :update, :destroy]
    
    def show

    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private
    def find_adoption_process
        @adoption_process = AdoptionProcess.find(params[:id])
    end
    def adoption_params
        params.require(:adoption_process).permit(:user_id, :animal_id, :status, :meeting_date )
    end
end
