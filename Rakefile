require 'rake'
require 'rake/packagetask'


VERSION='1.0.0'

Rake::PackageTask.new('vim', VERSION) do |p|
    p.need_tar = true
    p.package_files.include("bundle/**/**")
end


task :gh_release => [:package] do
  %{mkdir release && mv pkg/vim-#{VERSION}.tar.gz release/vim-#{VERSION}.tar}
  %{gh-release create narkisr/.vim VERSION}
end
