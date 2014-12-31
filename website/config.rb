#-------------------------------------------------------------------------
# Configure Middleman
#-------------------------------------------------------------------------

# TODO: vagrant.io?
set :base_url, "https://www.vagrantup.com/"

activate :hashicorp do |h|
  h.version      = '1.7.1'
  h.bintray_repo = 'mitchellh/vagrant'
  h.bintray_user = 'mitchellh'
  h.bintray_key  = ENV['BINTRAY_API_KEY']
end

page "/docs/*", layout: "docs"

helpers do
  # Get the title for the page.
  #
  # $param [Middleman::Page] page
  #
  # $return [String]
  def title_for(page)
    if page && page.data.page_title
      return "#{page.data.page_title} - Vagrant by HashiCorp"
    end

    "Vagrant by HashiCorp"
  end
end
