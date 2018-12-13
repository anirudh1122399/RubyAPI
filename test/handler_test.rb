require_relative '../handler.rb'
require 'json'
require 'test/unit'

class TestHandler < Test::Unit::TestCase
  def test_hello()
    event = {}.to_json
    context = {}.to_json
    response = JSON.parse(hello)
    p response
    assert_equal 200, response["statusCode"]
    assert_match /Serverless/, response["body"]
  end
end
