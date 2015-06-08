package "zsh" do
  action :install
end

execute "Install Oh-My-Zsh" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command <<-EOF
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  EOF
end

execute "Change default shell to Zsh" do
  command "chsh -s $(which zsh) vagrant"
end
