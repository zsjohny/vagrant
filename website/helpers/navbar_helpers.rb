class Navbar
  attr_reader :app
  attr_reader :page

  def initialize(app, page)
    @app  = app
    @page = page
  end

  def item(body, url, options = {})
    klass = current?(url) ? "pill" : nil
    app.content_tag(:li, class: klass) do
      app.link_to(body, url, options)
    end
  end

  private

  def current?(url)
    return false if page.url.nil?
    page.url.start_with?(url.chomp("/"))
  end
end

# Returns the instance of the navbar class.
#
# @return [Navbar]
def navbar
  @navbar ||= Navbar.new(self, current_page)
end
