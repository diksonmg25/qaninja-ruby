module Actions
  def goto_login
    visit "/"
    click_on "Login"
  end

  def login_with(email, password)

    # def --- metodo

    find("#user_email").set email
    find("#user_password").set password
    click_on "Log in"
  end

  def login_alert
    return find(".message .message-body").text

    # metodo "login_alert" deve devolver não apenas o elemento ".message..."

    # mas também o texto desse elemento
  end
end
