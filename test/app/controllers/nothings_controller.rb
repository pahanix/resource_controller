class NothingsController < ResourceController::Base
  
  index.before          :redirect
  show.before           :redirect
  create.before         :redirect
  update.before         :redirect
  new_action.before     :redirect
  edit.before           :redirect
  destroy.before        :redirect
  
  private
  
  def redirect
    redirect_to '/'
  end
end
