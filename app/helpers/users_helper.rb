module UsersHelper
  def documents_ready?
    if logged_in?
      current_user.cpf_file? #condition. Check all required files.
    end
  end
end
