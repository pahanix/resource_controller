module ResourceController
  module Actions
    
    def index
      load_collection
      before :index
      return if performed?
      response_for :index
    end
    
    def show
      load_object
      before :show
      return if performed?
      response_for :show
    rescue ActiveRecord::RecordNotFound
      response_for :show_fails
    end

    def create
      build_object
      load_object
      before :create
      return if performed?
      if object.save
        after :create
        set_flash :create
        response_for :create
      else
        after :create_fails
        set_flash :create_fails
        response_for :create_fails
      end
    end

    def update
      load_object
      before :update
      return if performed?
      if object.update_attributes object_params
        after :update
        set_flash :update
        response_for :update
      else
        after :update_fails
        set_flash :update_fails
        response_for :update_fails
      end
    end

    def new
      build_object
      load_object
      before :new_action
      return if performed?
      response_for :new_action
    end

    def edit
      load_object
      before :edit
      return if performed?
      response_for :edit
    end

    def destroy
      load_object
      before :destroy
      return if performed?
      if object.destroy
        after :destroy
        set_flash :destroy
        response_for :destroy
      else
        after :destroy_fails
        set_flash :destroy_fails
        response_for :destroy_fails
      end
    end
    
  end
end
