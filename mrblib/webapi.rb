module Rack
  class WebAPI < Hibari::App
    include Rack::R3

    def build

      result = Rack::R3.call({'REQUEST_METHOD' => @req.request_method, 'PATH_INFO' => @req.path_info})
      @res.code = result[0]

      result[1].each do |key, value|
        @res.headers[key] = value
      end

      @res.body.push result[2]

    end
  end
end
