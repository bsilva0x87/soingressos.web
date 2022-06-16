# frozen_string_literal: true

module WebsiteHelper
  COMPONENTS_ROOT_PATH = 'components/website'

  def render_component(context, options = {})
    render([COMPONENTS_ROOT_PATH, '/', context].join, options)
  end
end
