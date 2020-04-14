class AdoptionProcessesController < ApplicationController
    before_action :find_adoption_processes, only: [:show, :edit, :update, :destroy]
    
    def show
        
    end

    def new
        @adoption_process = AdoptionProcess.new
    end

    def create
        @adoption_process = AdoptionProcess.new(adoption_params)
        if @adoption_process.valid?
            @adoption_process.save
            redirect_to adoption_path(@adoption_process)
        else
            render :new
        end
    end

    def edit

    end

    def update
        @adoption_process.update(adoption_params)
        redirect_to adoption_path(@adoption_process)
        render :edit
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
