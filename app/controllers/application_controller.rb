class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  require 'json'

  def index
    render template: 'index'
  end

end
