class Users::RegistrationsController < Devise::InvitationsController

  protected

  def update_resource_params
    params.require(:user).permit(:password, :password_confirmation, :invitation_token, :first_name, :last_name, :avatar)
  end
end
