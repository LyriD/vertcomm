module ApplicationHelper

  def taxons_tree(root_taxon, current_taxon, max_level = 1)
    return '' if max_level < 1 || root_taxon.children.empty?
    content_tag :ul, class: 'sidebar-menu arrows' do
      root_taxon.children.map do |taxon|
        css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'active' : nil
        r = content_tag(:li, content_tag(:i, '', class: "fa fa-angle-right")+link_to(taxon.name, seo_url(taxon))+taxons_tree(taxon, current_taxon, max_level = 2))
      end.join("\n").html_safe
    end
  end


end
