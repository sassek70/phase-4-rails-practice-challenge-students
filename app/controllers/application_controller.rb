class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :invalid

    private
    
    def not_found(error)
        render json: {error: "#{error.model} not found"}, status: :not_found
    end

    def invalid(error)
        render json: {errors: error.record.errors.full_messages}, status: :unprocessable_entity
    end



end
