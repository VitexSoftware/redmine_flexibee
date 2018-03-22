FileUtils.mkdir_p(Rails.root.join('log/redmine_flexibee')) unless Dir.exist?(Rails.root.join('log/redmine_flexibee'))

require 'redmine'
#require_dependency 'redmine_flexibee/hook_listener'
#require_dependency 'redmine_flexibee/patches/issue_patch'

Redmine::Plugin.register :redmine_redmine_flexibee do
  name 'Redmine connector for FlexiBee'
  url 'https://github.com/VitexSoftware/redmine_flexibee.git'
  description 'This is a plugin for Redmine which allow use FlexiBee API'
  version '0.1.0'
  author 'Vitex Software'
  author_url 'https://vitexsoftware.cz/'
  settings(default: {
    'freezed_statuses' => [],
    'open_status' => []
                    },
           partial: 'settings/redmine_flexibee')

end
