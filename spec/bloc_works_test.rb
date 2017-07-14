require_relative '../lib/bloc_works'
require 'test/unit'
require 'rack/test'
require 'rspec'

class ApplicaationTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    BlocWorks::Application.new
  end

  def test_it_receives_200_status
    get "/"
    assert last_response.ok?
    assert_equal(200, last_response.status)
  end

  def test_it_displays_text
    get "/"

    assert_equal("Hello Blocheads!", last_response.body)
  end
end
