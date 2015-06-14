module FloRollout
  class FeaturesController < ApplicationController
    before_filter :authenticate_user!

    def index
      @init = $rollout
      @features = @init.features.map{ |feature| FloRollout::FeatureDetail.new(feature) }
    end

    def create
      if params[:commit] == "Activate"
        $rollout.activate_group(params[:feature_sym].to_sym, :admin)
      else
        $rollout.deactivate_group(params[:feature_sym].to_sym, :admin)
      end
      redirect_to :back
    end
  end
end
