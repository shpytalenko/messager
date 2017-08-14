class CreateAdminService
  def call
    user = User.find_or_create_by!(email: Rails.application.secrets.admin_email) do |user|
        user.password = Rails.application.secrets.admin_password
        user.password_confirmation = Rails.application.secrets.admin_password
 #       user.confirmed_at = Time.now
        #binding.pry
        user.plan = Plan.first
        user.admin!
      end
  end
end
