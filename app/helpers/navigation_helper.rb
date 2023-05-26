# frozen_string_literal: true

module NavigationHelper
  def nav_tab(title, url, options = {})
    current_page = options.delete :current_page

    css_class = current_page == title ? 'text-gray-700 dark:text-gray-400' : 'text-gray-500 dark:text-gray-200'

    options[:class] = if options[:class]
                        "#{options[:class]} #{css_class}"
                      else
                        css_class
                      end

    link_to title, url, options
  end

  def currently_at(current_page = '')
    render partial: 'shared/navigations/header', locals: { current_page: }
    render partial: 'shared/navigations/footer', locals: { current_page: }
  end

  def full_title(page_title = '')
    base_title = 'Chick-Chuck'
    if page_title.present?
      "#{page_title} | #{base_title}"
    else
      base_title
    end
  end
end
