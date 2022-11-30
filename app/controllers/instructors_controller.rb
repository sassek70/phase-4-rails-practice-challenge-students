class InstructorsController < ApplicationController

    def index
        render json: Instructor.all, status: :ok
    end

    def show
        render json: Instructor.find(params[:id])
    end

    def create
        student = Instructor.create!(instructor_params)
        render json: student, status: :created
    end

    def update
        student = Instructor.find(params[:id])
        student.update!(instructor_params)
        render json: student, status: :accepted
    end

    def destroy
        student = Instructor.find(params[:id])
        student.destroy!
        head :no_content
    end

    private

    def instructor_params
        params.permit(:name)
    end
end
