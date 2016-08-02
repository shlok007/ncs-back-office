module Admin
  class EventsController < Admin::ApplicationController
    def new
      super
      if !current_user.has_role? :admin
        redirect_to admin_events_path, alert: "You are not authorised to perform this action"
      end
    end

    def destroy
      if !current_user.has_role? :admin
        redirect_to admin_events_path, alert: "You are not authorised to perform this action"
      end
    end
  end
end
