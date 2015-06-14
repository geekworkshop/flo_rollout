module FloRollout
  class Init

    def initialize
      @rollout = $rollout
    end

    def features
      @rollout.features
    end
  end
end
