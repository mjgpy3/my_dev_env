git '/tmp/dotfiles' do
  repository 'https://github.com/mjgpy3/dotfiles.git'
  revision 'master'
  action :sync
end

execute 'sed -i "s/~/\/home\/vagrant"/g /tmp/dotfiles/install.sh'

['vimrc', 'bashrc'].each do |dotfile|
  execute "./install.sh #{dotfile}" do
    cwd '/tmp/dotfiles'
  end
end
