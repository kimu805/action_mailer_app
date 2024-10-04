require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "welcome" do
    email = UserMailer.with(
      to: "igarashi@example.com",
      name: "igaiga"
    ).welcome
    assert_emails(1){ email.deliver_now }
  end
end
