class AuthorityChangeNotificationMailer < ApplicationMailer
  default from: 'from@example.com'

  def authority_change_notification_mail(team)
    @team = team
    @team.assigns.each do |assign|
      mail to: assign.user.email, subject: "リーダー権限移動のお知らせ"
    end
  end
end
