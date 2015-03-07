class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    piece_path
  end
end