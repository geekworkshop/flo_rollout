require 'rails/generators'

module FloRollout
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      desc "This generator mount flo_rollout engine"

      def install
        route "mount FloRollout::Engine => '/flo_rollout'"
      end
    end
  end
end
