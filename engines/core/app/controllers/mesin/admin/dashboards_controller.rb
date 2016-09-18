module Mesin
  module Admin
    class DashboardsController < ApplicationController
      skip_before_action :authenticate_user!
      
      def index

      end
    end
  end
end
