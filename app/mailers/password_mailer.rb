class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
    @token = params[:user].to_sgid(expires_in: 15.minutes, for: 'password reset')
    # @token = params[:user].to_sgid

    mail to: params[:user].email
  end
end
