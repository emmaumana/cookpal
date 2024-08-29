# typed: strict

class ApplicationController < ActionController::Base
  extend T::Sig

  skip_before_action :verify_authenticity_token

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  sig { returns(Integer) }
  def current_page
   page_params.zero? ? 1 : page_params
  end

  sig { returns(Integer) }
  def page_params
    TypedParams[ActionController::Parameters].new.extract!(params)[:page].to_i
  end
end
