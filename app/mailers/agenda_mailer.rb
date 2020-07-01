class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_mail(agenda)
    @agenda = agenda
    @agenda.team.members.each do |notification|
      mail to: notification.team.members.email, subject: "アジェンダ削除のお知らせ"
    end
  end
end
