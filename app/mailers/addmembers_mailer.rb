class AddmembersMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.addmembers_mailer.invite.subject
  #
  def invite(person)
    @person = person
    mail(to: person.email, subject: "welcome")
  end
end
