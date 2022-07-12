# frozen_string_literal: true

module WebsiteHelper
  COMPONENTS_ROOT_PATH = 'components/website'

  def render_component(context, options = {})
    render([COMPONENTS_ROOT_PATH, '/', context].join, options)
  end

  def segments
    Rails.cache.fetch('website_segments', expires_in: 30.minutes) do 
      Segment.active.order(index: :asc)
    end
  end

  def regions
    Rails.cache.fetch('website_regions', expires_in: 6.hours) do
      Region.roots
    end
  end
end
