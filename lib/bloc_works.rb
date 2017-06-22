require "bloc_works/version"
require "bloc_works/controller"

module BlocWorks
  class Application
    def call(env)
      response = self.root(env)
      [200, {'Content-Type' => 'text/html'}, ["Hello BlocHeads!"]]
    end
  end
end
