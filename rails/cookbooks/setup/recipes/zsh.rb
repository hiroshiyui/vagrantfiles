package "zsh" do
  action :install
end

execute "Install Oh-My-Zsh" do
  user "vagrant"
  command "curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh"
end

execute "Change default shell to Zsh" do
  command "chsh -s $(which zsh) vagrant"
end
