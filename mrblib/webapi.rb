module Rack
  class WebAPI
    include Rack::R3
    def call(env)
      super({'REQUEST_METHOD' => env["REQUEST_METHOD"], 'PATH_INFO' => env["PATH_INFO"]})
    end

    def run
      engine = if Object.const_defined?(:Nginx)
                'nginx'
               elsif Object.const_defined?(:Apache)
                'apache'
               else # presume it's h2o
                'h2o'
               end

      case engine
      when 'nginx', 'apache'
        Kernel.run(self)
      when 'h2o'
        self
      end
    end
  end
end
