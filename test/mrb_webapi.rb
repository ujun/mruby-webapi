##
## WebAPI Test
##

assert("WebAPI#hello") do
  t = WebAPI.new "hello"
  assert_equal("hello", t.hello)
end

assert("WebAPI#bye") do
  t = WebAPI.new "hello"
  assert_equal("hello bye", t.bye)
end

assert("WebAPI.hi") do
  assert_equal("hi!!", WebAPI.hi)
end
