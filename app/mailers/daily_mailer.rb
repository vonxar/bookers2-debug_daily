class DailyMailer < ApplicationMailer
  def notify_user
    # default to: -> { User.pluck(:email}
    mail(
      to: User.pluck(:email),
      subject: "定期連絡")
  end
end
