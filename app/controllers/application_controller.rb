class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def can_administer?
    if (current_user.try(:admin?) || current_user.try(:prof?))
      return true
    end
  end

end
