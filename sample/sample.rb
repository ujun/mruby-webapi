class MyAPI < Rack::WebAPI

  get "/hoge/{id}" do |id|
    [200,
     {'content-type' => 'text/plain; charset=utf-8'},
     ["your id is #{id}"]
    ];
  end

  post "/hoge/{id}/{message}" do |id, message|
    [200,
     {'content-type' => 'text/plain; charset=utf-8'},
     ["post message '#{message}' for #{id}"]
    ];
  end

  get "/fuga" do
    [200,
     {'content-type' => 'text/plain; charset=utf-8'},
     ["Fuga World!"]
    ];
  end

end

MyAPI.run.new
