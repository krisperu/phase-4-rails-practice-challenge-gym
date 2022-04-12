class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    private
    def render_record_not_found(exception)
        render json: { error: "#{exception.model} not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_message }, status: :unprocessable_entity
    end
end
