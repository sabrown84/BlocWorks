require_relative '../lib/bloc_works'
require 'test/unit'
require 'rack/test'
require 'rspec'

class ApplicaationTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    BlocWorks::Application
  end

  def test_call
    get "/"

    assert last_response.ok?
    assert_equal(200, last_response.status)
    assert_equal("text/html", last_response.content_type)
    assert_equal("Hello Blocheads!", last_response.body)
  end
end
