module Admin
  class UsersController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = User.all.paginate(10, params[:page])
    # end
    def create
      if resource.save
        if resource_params[:year] == "1"
        elsif resource_params[:year] == "2"
          resource.add_role :editor
        elsif resource_params[:year] == "3"
          resource.add_role :admin
        elsif resource_params[:year] == "4"
          resource.add_role :admin
        end
      end 
    end

    def update
      super
      if requested_resource.update(resource_params)
        if resource_params[:year] == "1"
        elsif resource_params[:year] == "2"
          requested_resource.add_role :editor
        elsif resource_params[:year] == "3"
          requested_resource.add_role :admin
        elsif resource_params[:year] == "4"
          requested_resource.add_role :admin
        end
      end
    end

    def index
      if !current_user.has_role? :admin
        redirect_to admin_events_path, alert: "Not authorised to perform this action"
      end
    end
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   User.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
