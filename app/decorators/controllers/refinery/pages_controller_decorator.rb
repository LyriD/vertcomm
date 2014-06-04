# encoding: UTF-8
Refinery::PagesController.class_eval do

  skip_before_filter :find_page, :only => [:contacts, :why_us, :service, :services, :clients]
  def contacts
    @page = ::Refinery::Page.where(:link_url => '/contacts').first || error_404
    render_with_templates?
  end
  def clients
    @page = ::Refinery::Page.where(:link_url => '/clients').first || error_404
    render_with_templates?
  end
  def services
    @page = ::Refinery::Page.where(:link_url => '/services').first || error_404
    render_with_templates?
  end
  def service
    @page = ::Refinery::Page.where(:link_url => '/service').first || error_404
    render_with_templates?
  end
  def why_us
    @page = ::Refinery::Page.where(:link_url => '/why_us').first || error_404
    render_with_templates?
  end

end