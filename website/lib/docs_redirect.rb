module HashiCorp
  module Rack
    # This redirects legacy docs.vagrantup.com URLs to /docs.
    class DocsRedirect
      def initialize(app)
        @app = app
      end

      def call(env)
        if env["HOST"].include?("docs.vagrantup.com")
          url = "https://vagrant.io/docs/#{env["PATH_INFO"]}"
          headers = { "Content-Type" => "text/html", "location" => url }
          message = "Redirecting to new URL..."
          return [301, headers, message]
        end

        @app.call(env)
      end
    end
  end
end
