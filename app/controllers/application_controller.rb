class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordNotFound, with: :entity_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
  
  private
  
  def entity_not_found_response(error)
    render json: { "error": "Episode not found" }, status: :not_found
  end

  def unprocessable_entity_response(exceptions)
    render json: { errors: exceptions.record.errors.full_messages }, status: :unprocessable_entity
  end

end
