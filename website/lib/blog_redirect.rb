module HashiCorp
  module Rack
    # This redirects the old Vagrant blog pages to HashiCorp's blog.
    class BlogRedirect
      def initialize(app)
        @app = app
      end

      def call(env)
        if env["PATH_INFO"].start_wth?("/blog")
          path = env["PATH_INFO"].gsub("/blog", "")
          url = "https://hashicorp.com/blog/#{path}"
          headers = { "Content-Type" => "text/html", "location" => url }
          message = "Redirecting to new URL..."
          return [301, headers, message]
        end

        @app.call(env)
      end
    end
  end
end
