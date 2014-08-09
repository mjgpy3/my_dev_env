['g++', 'curl', 'libssl-dev', 'apache2-utils', 'make'].each do |nodejs_dependency|
  package nodejs_dependency
end

git '/tmp/nodejs' do
  repository 'git://github.com/ry/node.git'
  revision 'master'
  action :sync
end

[
  './configure',
  'make',
  'make install'
].each do |nodejs_config_command|
  execute nodejs_config_command do
    cwd '/tmp/nodejs'
  end
end

git '/home/vagrant/angular' do
  repository 'https://github.com/angular/angular.js'
  revision 'master'
  action :sync
end

[
  'npm install -g grunt-cli',
  'npm install -g bower',
  'npm install -g grunt-cli',
  'npm install',
  'bower install',
  'grunt package'
].each do |command|
  execute command do
    cwd '/home/vagrant/angular'
  end
end
