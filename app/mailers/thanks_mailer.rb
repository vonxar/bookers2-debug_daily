class ThanksMailer < ApplicationMailer
  default from: 'businessmailer18@gmail.com'
  
  # def send_confirm_to_user(user)
  #   @user = user
  #   mail to: @user.email,subject: "会員登録が完了致しました。"
  # end
  
  def send_confirm_to_user(user)
    @user = user
    mail(
      subject: "登録完了",
      to: @user.email
      ) do |f|
        f.html
      end
  end
end
