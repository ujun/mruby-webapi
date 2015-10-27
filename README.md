# mruby-webapi
A Web API framework for mruby.
Create web app APIs respond to various formats.

## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'ujun/mruby-webapi'
end
```
## example
/etc/apache2/mods-available/mruby.conf

```
<IfModule mod_mruby.c>
  <Location />
    mrubyHandlerMiddle /etc/apache2/webapi.rb
  </Location>
</IfModule>
```

/etc/apache2/webapi.rb

```ruby
class MyAPI < Rack::WebAPI

  get "/hoge/{id}" do |id|
    [
      200,
      {'content-type' => 'text/plain; charset=utf-8'},
      ["your id is #{id}"]
    ];
  end

  post "/hoge/{id}/{message}" do |id, message|
    [
      200,
      {'content-type' => 'text/plain; charset=utf-8'},
      ["post message '#{message}' for #{id}"]
    ];
  end

  get "/fuga" do
    [
      200,
      {'content-type' => 'text/plain; charset=utf-8'},
      ["Fuga World!"]
    ];
  end

end

MyAPI.new.run
```

access example

```bash 
curl http://localhost/fuga
#=> "Fuga World!"
curl http://localhost/hoge/22
#=> your id is 22
```

## License
under the MIT License:
- see LICENSE file
