class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  after_filter :advertise_flash_via_header

  def advertise_flash_via_header
    return unless request.xhr?

    unless flash.empty?
      response.headers['X-Message-Present'] = true
    end
  end
end
