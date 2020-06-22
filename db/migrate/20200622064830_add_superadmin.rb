class AddSuperadmin < ActiveRecord::Migration[6.0]
  def change
    User.create! do |u|
      u.email = "tushar@linkwok.com"
      u.password = "1linkwok@"
      u.superadmin_role = true
    end
  end
end
