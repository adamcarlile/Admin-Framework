class Admin::UsersController < Admin::BaseController
  resource_controller
  
  before_filter :set_page_title
    
  create.response do |wants|
    wants.html { redirect_to admin_users_path(params[:locale]) }
  end
  
  update.response do |wants|
    wants.html { redirect_to admin_users_path(params[:locale]) }
  end
  
  destroy.response do |wants|
    wants.html { redirect_to admin_users_path(params[:locale]) }
  end
    
  private
  
  def set_page_title
    @page_title = 'Users'
  end
  
end
