module FloRollout
  class FeatureDetail
    def initialize(feature)
      @feature = feature
      @rollout = $rollout
    end

    def name
      @feature
    end

    def groups
      @rollout.get(@feature).groups
    end
  end
end
