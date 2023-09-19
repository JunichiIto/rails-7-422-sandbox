class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordInvalid do |exception|
    logger.error exception.full_message

    render template: 'errors/error_422', status: 422, layout: 'error'
    # the code below also works but the status code is 302 instead of 422
    # redirect_to '/422.html'
  end
end
