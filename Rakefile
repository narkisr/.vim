require 'rake'
require 'rake/packagetask'


VERSION='1.0.0'

Rake::PackageTask.new('vim', VERSION) do |p|
    p.need_tar_gz = true
    p.package_files.include("bundle/**/**")
end


directory 'release' => ['package']

file 'release' do
    cp "pkg/vim-#{VERSION}.tar.gz", "release/"
    sh "gh-release create narkisr/.vim #{VERSION}"
end
