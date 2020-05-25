class User::RegistrationController < Devise::RegistrationsController

def create
 super 
  if @user.save
  ThanksMailer.send_confirm_to_user(@user).deliver_now
end
end

end
 