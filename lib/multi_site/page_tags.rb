module MultiSite::PageTags
  include Radiant::Taggable
  
  class TagError < StandardError; end

  tag 'if_site' do |tag|
    name = tag.attr['name']
    tag.expand if Site.find_for_host(request.host).name == name
  end

end