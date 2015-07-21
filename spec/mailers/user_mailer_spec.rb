require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "signup_confirmation" do
    let(:mail) { UserMailer.signup_confirmation }

    it "renders the headers" do
      expect(mail.subject).to eq("Signup confirmation")
      expect(mail.to).to eq(["to@example.org", "dfs"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end