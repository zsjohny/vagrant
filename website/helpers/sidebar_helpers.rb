class Sidebar
  attr_reader :app
  attr_reader :page

  def initialize(app, page)
    @app  = app
    @page = page
  end

  def item(current, body, url, options = {})
    klass = current?(current) ? "current" : nil
    app.content_tag(:li, class: klass) do
      app.link_to(body, url, options)
    end
  end

  def section?(id)
    section == id
  end

  private

  def section
    current = page.data.sidebar_current
    return "" if current.nil?
    return current.split("-").first
  end

  def current?(id)
    current = page.data.sidebar_current
    return current == id || section == id
  end
end

# Sidebar returns the instance of the sidebar class.
#
# @return [Sidebar]
def sidebar
  @sidebar ||= Sidebar.new(self, current_page)
end
