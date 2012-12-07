class AdminUser < ActiveRecord::Migration
  def up
    ##### primer administrador de la red ######
    @first_admin = User.find(1)
    @first_admin.update_attribute(:role, "admin")
    #### segundo admin de la red #####
    @second_admin = User.find(2)
    @second_admin.update_attribute(:role, "admin")
  end

  def down
  end
end
